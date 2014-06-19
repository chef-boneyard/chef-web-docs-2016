.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A sample |chef server rb| file that contains all possible settings (listed alphabetically):

.. code-block:: ruby

   amqp_consumer_id "default"
   amqp_host 0.0.0.0
   amqp_pass 12345678
   amqp_port 1234
   amqp_user adamjacobs
   amqp_vhost "/chef"
   authorized_openid_identifiers http://username.myopenid.com
   authorized_openid_providers myopenid.com
   client_key "/etc/chef/client.pem"
   chef_server_url "http://localhost:4000"
   client_registration_retries 5
   cookbook_path [ 
                  "/var/chef/cookbooks", 
                  "/var/chef/site-cookbooks" 
                 ]
   cookbook_tarball_path "/var/chef/cookbook-tarballs"
   couchdb_database "chef"
   couchdb_url "http://localhost:5984"
   couchdb_version nil
   data_bag_path "/var/chef/databags"
   environment "production"
   file_cache_path "/var/chef/cache"
   file_backup_path "/var/chef/backup"
   group nil
   http_proxy "http://proxy.vmware.com:3128"
   http_proxy_pass "1234567890"
   http_proxy_user "my_username"
   http_retry_count 5
   http_retry_delay 5
   https_proxy "http://proxy.vmware.com:3128"
   interval 1800
   json_attribs nil
   log_level :info
   log_location STDOUT
   node_name "mynode.example.com"
   node_path "/var/chef/node"
   no_proxy "*.vmware.com,10.*"
   openid_cstore_couchdb false
   openid_cstore_path "/var/chef/openid/cstore"
   pid_file "/tmp/executable.pid"
   recipe_url "http://path/to/remote/cookbook"
   rest_timeout 300
   role_path "/var/chef/roles"
   signing_ca_cert "/var/chef/ca/cert.pem"
   signing_ca_key "/var/chef/ca/key.pem"
   signing_ca_user nil
   signing_ca_group nil
   signing_ca_country "US"
   signing_ca_state "Washington"
   signing_ca_location "Seattle"
   signing_ca_org "Chef User"
   signing_ca_domain "opensource.opscode.com"
   signing_ca_email "opensource-cert@opscode.com"
   solo false
   solr_data_path "/var/chef/solr/data"
   solr_heap_size 256
   solr_home_path "/var/chef/solr"
   solr_java_opts nil
   solr_jetty_path "/var/chef/solr-jetty"
   solr_url "http://localhost:8983"
   splay
   ssl_client_cert ""
   ssl_client_key ""
   ssl_ca_path nil "/etc/ssl/certs"
   ssl_ca_file nil
   ssl_verify_mode :verify_peer
   syntax_check_cache_path
   umask 0022
   user nil
   validation_key "/etc/chef/validation.pem"
   validation_client_name "chef-validator"
   verbose_logging true
   web_ui_admin_default_password "p@ssw0rd1"
   web_ui_admin_user_name  "admin"
   web_ui_client_name "chef-webui"
   web_ui_key "/etc/chef/webui.pem"
