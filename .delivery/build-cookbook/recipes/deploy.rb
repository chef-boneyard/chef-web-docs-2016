include_recipe 'build-cookbook::_handler'
include_recipe 'chef-sugar::default'
include_recipe 'delivery-truck::deploy'

Chef_Delivery::ClientHelper.enter_client_mode_as_delivery

site_name = 'docs'
domain_name = 'chef.io'
env = Chef::Environment.load(delivery_environment)
software_version = env.override_attributes['applications'][node['delivery']['change']['project']]
release = data_bag_item(node['delivery']['change']['project'], software_version)

fastly_creds = encrypted_data_bag_item_for_environment('cia-creds','fastly')
aws_creds = encrypted_data_bag_item_for_environment('cia-creds', 'chef-cia')

ENV['AWS_CONFIG_FILE'] = File.join(node['delivery']['workspace']['root'], 'aws_config')

if node['delivery']['change']['stage'] == 'delivered'
  bucket_name = node['delivery']['change']['project'].gsub(/_/, '-')
  fqdn = "#{site_name}.#{domain_name}"
else
  bucket_name = "#{node['delivery']['change']['project'].gsub(/_/, '-')}-#{node['delivery']['change']['stage']}"
  fqdn = "#{site_name}-#{node['delivery']['change']['stage']}.#{domain_name}"
end

execute "get the artifact" do
  command "aws s3 cp #{release['artifact_location']} ."
  cwd node['delivery']['workspace']['repo']
end

execute "untar the artifact" do
  command "tar xvf #{release['artifact_name']}"
  cwd node['delivery']['workspace']['repo']
end

execute "upload the site" do
  command "aws s3 sync . s3://#{bucket_name} --acl public-read --delete"
  cwd File.join(node['delivery_builder']['repo'], 'build')
end

=begin
include_recipe 'build-cookbook::_install_dependencies'

execute 'create redirects' do
  command "bundle exec rake build_redirects"
  cwd node['delivery_builder']['repo']
  user node['delivery_builder']['build_user']
  environment(
    'PATH' => '/opt/chefdk/embedded/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games',
    'S3_BUCKET' => bucket_name,
    'AWS_ACCESS_KEY_ID' => aws_creds['access_key_id'],
    'AWS_SECRET_ACCESS_KEY' => aws_creds['secret_access_key']
  )
  sensitive true
end
=end

fastly_service = fastly_service fqdn do
  action :purge_all
  api_key fastly_creds['api_key']
  sensitive true
end
