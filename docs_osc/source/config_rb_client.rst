.. THIS PAGE IS LOCATED AT THE /open_source/ PATH.

=====================================================
client.rb
=====================================================

.. include:: ../../includes_config/includes_config_rb_client.rst

Settings
==========================================================================

.. include:: ../../includes_config/includes_config_rb_11-16_client_settings_osc.rst

Example
=====================================================
A sample |client rb| file that contains all possible settings (listed alphabetically):

.. code-block:: ruby

   add_formatter :nyan
   add_formatter :foo
   add_formatter :bar
   automatic_attribute_whitelist [ 
                 "network/interfaces/eth0" 
                 ]
   cache_path File.join(File.expand_path("~"), ".chef", "cache")
   checksum_path "/var/chef/checksums"
   chef_repo_path "/path/to/chef-repo"
   chef_server_url "http://localhost:4000"
   chef_zero.enabled true
   chef_zero[:port] 8889
   client_key "/etc/chef/client.pem"
   client_registration_retries 5
   cookbook_path [ 
                 "/var/chef/cookbooks", 
                 "/var/chef/site-cookbooks" 
                 ]
   cookbook_sync_threads "10"
   data_bag_decrypt_minimum_version "2"
   data_bag_path "/var/chef/data_bags"
   default_attribute_whitelist [ 
                 "filesystem/dev/disk0s2/size"
                 ]
   diff_disabled false
   diff_filesize_threshold 10000000
   diff_output_threshold 1000000
   enable_reporting true
   enable_reporting_url_fatals false
   enable_selinux_file_permission_fixup true
   encrypted_data_bag_secret "/etc/chef/encrypted_data_bag_secret"
   environment "production"
   environment_path "/var/chef/environments"
   file_atomic_update true
   file_backup_path "/var/chef/backup"
   file_cache_path "/var/chef/cache"
   file_staging_uses_destdir false
   ftp_proxy
   ftp_proxy_passs
   ftp_proxy_user
   group nil
   http_proxy "http://proxy.vmware.com:3128"
   http_proxy_pass "1234567890"
   http_proxy_user "my_username"
   http_retry_count 5
   http_retry_delay 5
   https_proxy "http://proxy.vmware.com:3128"
   https_proxy_pass "1234567890"
   httpx_proxy_user "my_username"
   interval 1800
   json_attribs nil
   local_key_generation false
   local_mode true
   lockfile nil
   log_level :info
   log_location STDOUT
   no_lazy_load false
   no_proxy "*.vmware.com,10.*"
   node_name "mynode.example.com"
   node_path "/var/chef/node"
   normal_attribute_whitelist [ 
                 "filesystem/dev/disk0s2/size" 
                 ]
   override_attribute_whitelist [ 
                 "map - autohome/size" 
                 ]
   pid_file "/tmp/chef-client.pid"
   rest_timeout 300
   role_path "/var/chef/roles"
   splay nil
   ssl_ca_file nil
   ssl_ca_path nil "/etc/ssl/certs"
   ssl_client_cert ""
   ssl_client_key ""
   ssl_verify_mode :verify_peer
   syntax_check_cache_path ""
   umask 0022
   user nil
   validation_client_name "chef-validator"
   validation_key "/etc/chef/validation.pem"
   verbose_logging true
   verify_api_cert false
   whitelist {
              "job-name" => "command",
              "job-name" => "command",
              "chef-client" => "chef-client"
             }
   yum_lock_timeout "30"
