include_recipe 'build-cookbook::_handler'
include_recipe 'chef-sugar::default'
include_recipe 'delivery-truck::provision'

Chef_Delivery::ClientHelper.enter_client_mode_as_delivery

slack_creds = encrypted_data_bag_item_for_environment('cia-creds','slack')
aws_creds = encrypted_data_bag_item_for_environment('cia-creds','chef-secure')
fastly_creds = encrypted_data_bag_item_for_environment('cia-creds','fastly')

if ['union', 'rehearsal', 'delivered'].include?(node['delivery']['change']['stage'])
  slack_channels = slack_creds['channels'].push('#operations')
else
  slack_channels = slack_creds['channels']
end

site_name = 'learn'
domain_name = 'chef.io'

chef_slack_notify 'Notify Slack' do
  channels slack_channels
  webhook_url slack_creds['webhook_url']
  username slack_creds['username']
  message "*[#{node['delivery']['change']['project']}] (#{node['delivery']['change']['stage']}:#{node['delivery']['change']['phase']})* Provisioning Begun"
  sensitive true
end

ENV['AWS_CONFIG_FILE'] = File.join(node['delivery']['workspace']['root'], 'aws_config')

require 'chef/provisioning/aws_driver'
with_driver 'aws'

if node['delivery']['change']['stage'] == 'delivered'
  bucket_name = node['delivery']['change']['project'].gsub(/_/, '-')
  fqdn = "#{site_name}.#{domain_name}"
else
  bucket_name = "#{node['delivery']['change']['project'].gsub(/_/, '-')}-#{node['delivery']['change']['stage']}"
  fqdn = "#{site_name}-#{node['delivery']['change']['stage']}.#{domain_name}"
end

aws_s3_bucket bucket_name do
  enable_website_hosting true
  website_options :index_document => {
    :suffix => "index.html"
  },
  :error_document => {
    :key => "not_found.html"
  }
end

### Fastly Setup
fastly_service = fastly_service fqdn do
  api_key fastly_creds['api_key']
  sensitive true
end

fastly_domain fqdn do
  api_key fastly_creds['api_key']
  service fastly_service.name
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

fastly_backend bucket_name do
  api_key fastly_creds['api_key']
  service fastly_service.name
  address "#{bucket_name}.s3-website-us-east-1.amazonaws.com"
  port 80
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

fastly_request_setting 'force_ssl' do
  api_key fastly_creds['api_key']
  service fastly_service.name
  force_ssl true
  default_host "#{bucket_name}.s3-website-us-east-1.amazonaws.com"
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

fastly_gzip 'standard_gzip' do
  api_key fastly_creds['api_key']
  service fastly_service.name
  extensions 'css js html eot ico otf ttf json'
  sensitive true
  content_types [
    'text/html',
    'application/x-javascript',
    'text/css',
    'application/javascript',
    'text/javascript',
    'application/json',
    'application/vnd.ms-fontobject',
    'application/x-font-opentype',
    'application/x-font-truetype',
    'application/x-font-ttf',
    'application/xml',
    'font/eot',
    'font/opentype',
    'font/otf',
    'image/svg+xml',
    'image/vnd.microsoft.icon',
    'text/plain',
    'text/xml'
  ].join(" ")
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

fastly_s3_logging 's3_logging' do
  api_key fastly_creds['api_key']
  service fastly_service.name
  gzip_level 9
  access_key fastly_creds['logging']['s3']['access_key']
  secret_key fastly_creds['logging']['s3']['secret_key']
  bucket_name fastly_creds['logging']['s3']['bucket_name']
  path "/#{fqdn}"
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

embargo = fastly_condition 'embargo' do
  api_key fastly_creds['api_key']
  service fastly_service.name
  type 'request'
  statement 'geoip.country_code == "CU" || geoip.country_code == "SD" || geoip.country_code == "SY" || geoip.country_code == "KP" || geoip.country_code == "IR"'
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

fastly_response 'embargo' do
  api_key fastly_creds['api_key']
  service fastly_service.name
  request_condition embargo.name
  status 404
  sensitive true
  notifies :activate_latest, "fastly_service[#{fqdn}]", :delayed
end

unless node['delivery']['change']['stage'] == 'delivered'
  route53_record fqdn do
    name "#{fqdn}."
    value 'g.global-ssl.fastly.net'
    aws_access_key_id aws_creds['access_key_id']
    aws_secret_access_key aws_creds['secret_access_key']
    type 'CNAME'
    zone_id aws_creds['route53'][domain_name]
    sensitive true
  end
end

Chef_Delivery::ClientHelper.leave_client_mode_as_delivery
