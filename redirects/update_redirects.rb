#!/usr/bin/env ruby
# Deploy redirects to S3
#
# Setup:
# - Create ~/.aws/credentials if it doesn't already exist to store your AWS
#   credentials. This is the same format as used for the AWS CLI. If you don't
#   already use the AWS cli, it look like:
#
#       [default]
#       aws_access_key_id = AKIA...
#       aws_secret_access_key = ....
#
# - Create config.rb in the same directory as this script:
#
#   bucket 'yourdomain.com'
#   profile 'default'
#   redirects_file 'redirects.txt'
#
# - Change the bucket to the name of the S3 bucket where the redirects will
#   be.
# - If you used an alternative profile in your credentials file (i.e. you
#   added a section called '[profile myprofile]' to the aws credentials file,
#   then change the profile setting in ~/.s3shorten to match.
#
# Create a list of redirects. This should be a whitespace separated file of
# the form:
#
#   from_page.html to_page.html
#
# Comments (lines beginning with #) are allowed.

require 'highline/import'
require 'mixlib/config'
require 'aws-sdk'

module MyConfig
  extend Mixlib::Config
  config_strict_mode true
  default :profile, 'default'
  default :bucket,  'mybucket'
  default :redirects_file, 'redirects.txt'
end
MyConfig.from_file(File.expand_path('../config.rb', __FILE__))

# The default AWS credentials loader looks in this variable for the AWS
# and this looks to be the least intrusive way to set it.
if MyConfig.profile != 'default'
  ENV['AWS_PROFILE'] ||= "profile #{MyConfig.profile}"
end

def update_redirect(bucket, from_path, to_path)
  print "Updating #{from_path}... "
  o = bucket.objects[from_path]
  if o.exists?
    existing_path = o.head[:website_redirect_location]
    if existing_path == to_path
      puts "Already added."
    else
      puts "PROBLEM"
      if existing_path.nil?
        message = "Page already exists, but no redirect in place."
      else
        message = "Redirect is already in place to #{existing_path}."
      end
      puts message
      response = ask("Do you want to ovewrite with this redirect? [Y/N] ") {
        |yn| yn.limit = 1, yn.validate = /[yn]/i }
      if response.downcase == 'y'
        o.write('', :website_redirect_location => to_path, :acl => :public_read)
        puts "Overwrote with redirect to: #{to_path}"
      else
        puts "OK. Skipping."
      end
    end
  else
    o.write('', :website_redirect_location => to_path, :acl => :public_read)
    puts "Added redirect to: #{to_path}"
  end
end

s3 = AWS::S3.new
bucket = s3.buckets[MyConfig.bucket]
File.foreach(MyConfig.redirects_file) do |line|
  next if line.start_with?("#")
  next if line.chomp.empty?
  from_path, to_path = line.chomp.split(nil, 2)
  update_redirect(bucket, from_path, to_path)
end
