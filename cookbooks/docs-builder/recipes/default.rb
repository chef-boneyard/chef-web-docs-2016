#
# Cookbook Name:: docs-builder
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

include_recipe 'aws'

[
  'git',
  'python-pip',
  'python-dev',
  'parallel'
].each do |pkg|
  package pkg do
    action :install
  end
end

execute 'install awscli' do
  command 'pip install awscli'
  not_if { File::exists?('/usr/local/bin/aws') }
end

directory '/root/.ssh' do
  mode '0755'
end

file '/root/.ssh/id_rsa' do
  mode '0600'
  content node['docs-builder']['ssh_key'].gsub(/::::::::/, "\n")
  sensitive true
end

execute "ssh-keyscan -t rsa delivery.chef.co >> /root/.ssh/known_hosts" do
  not_if "grep -q delivery.chef.co '/root/.ssh/known_hosts'"
end

directory '/srv'

aws_ebs_volume "build_space" do
  action :attach
  volume_id 'vol-c2f12d36'
  device '/dev/sdi'
  aws_access_key node['docs-builder']['build_aws_access_key']
  aws_secret_access_key node['docs-builder']['build_aws_secret_access_key']
  sensitive true
end

mount '/srv' do
  device '/dev/xvdi'
end

unless node['docs-builder']['cached'] do
  execute 'rm -rf /srv/chef-web-docs'
end

git '/srv/chef-web-docs' do
  action :sync
  repository node['docs-builder']['repo_location']
  revision 'master'
end

execute "pip install -r requirements.txt" do
  cwd '/srv/chef-web-docs'
end

build_targets = <<END
master
12-5
slides
decks
server_12-2
analytics
delivery
client
devkit
11-0
11-2
11-4
11-6
11-8
11-10
11-12
11-14
11-16
11-18
12-0
12-1
12-2
12-3
12-4
ohai-6
ohai-7
ohai-8
push_1-0
push_2-0
server
server_12-0
server_12-1
enterprise
oec_11-0
oec_11-1
oec_11-2
open_source
osc_11-0
osc_11-1
END

file '/srv/chef-web-docs/targets.txt' do
  content build_targets
end

execute 'parallel -a targets.txt make' do
  cwd '/srv/chef-web-docs'
end

file File.join('/srv/chef-web-docs', 'build', 'version.txt') do
  content node['docs-builder']['build_name']
end

execute "create the tarball" do
  command "tar cvzf /srv/#{node['docs-builder']['build_name']}.tar.gz --exclude .git --exclude .delivery build"
  cwd '/srv/chef-web-docs'
  environment 'AWS_ACCESS_KEY_ID' => node['docs-builder']['prod_aws_access_key'],
    'AWS_SECRET_ACCESS_KEY' => node['docs-builder']['prod_aws_secret_access_key'],
    'AWS_DEFAULT_REGION' => 'us-east-1'
end

execute "upload the tarball" do
  command "aws s3 cp /srv/#{node['docs-builder']['build_name']}.tar.gz s3://#{node['docs-builder']['bucket_name']}/"
  cwd '/srv/chef-web-docs'
  environment 'AWS_ACCESS_KEY_ID' => node['docs-builder']['prod_aws_access_key'],
    'AWS_SECRET_ACCESS_KEY' => node['docs-builder']['prod_aws_secret_access_key'],
    'AWS_DEFAULT_REGION' => 'us-east-1'
end

checksum = ''
ruby_block 'get checksum' do
  block do
    checksum = `shasum -a 256 /srv/#{node['docs-builder']['build_name']}.tar.gz`.split[0]
  end
end

file "/srv/#{node['docs-builder']['build_name']}.tar.gz.checksum" do
  content lazy { checksum }
end

execute "upload the checksum" do
  command "aws s3 cp /srv/#{node['docs-builder']['build_name']}.tar.gz.checksum s3://#{node['docs-builder']['bucket_name']}/"
  cwd '/srv/chef-web-docs'
  environment 'AWS_ACCESS_KEY_ID' => node['docs-builder']['prod_aws_access_key'],
    'AWS_SECRET_ACCESS_KEY' => node['docs-builder']['prod_aws_secret_access_key'],
    'AWS_DEFAULT_REGION' => 'us-east-1'
end
