.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``amqp_consumer_id``
     - |amqp_consumer_id| For example:
       ::
 
          amqp_consumer_id "default"
   * - ``amqp_host``
     - |amqp_host| For example:
       ::
 
          amqp_host 0.0.0.0
   * - ``amqp_pass``
     - |amqp_pass| For example:
       ::
 
          amqp_pass 12345678
   * - ``amqp_port``
     - |amqp_port| For example:
       ::
 
          amqp_port 1234
   * - ``amqp_user``
     - |amqp_user| For example:
       ::
 
          amqp_user adamjacobs
   * - ``amqp_vhost``
     - |amqp_vhost| For example:
       ::
 
          amqp_vhost "/chef"
   * - ``authorized_openid_identifiers``
     - |authorized_openid_identifiers| For example:
       ::
 
          username.myopenid.com

       or:
       ::
 
          http://username.myopenid.com
   * - ``authorized_openid_providers``
     - |authorized_openid_providers| For example:
       ::
 
          myopenid.com
   * - ``cache_options``
     - |cache_options| For example:
       ::
 
          cache_options({ 
            :path => "/var/chef/cache/checksums", 
            :skip_expires => true 
          })
   * - ``cache_type``
     - |cache_type| For example:
       ::
 
          cache_type "BasicFile"
   * - ``client_key``
     - |client_key| For example:
       ::
 
          chef_server_url "http://localhost:4000"
   * - ``chef_server_url``
     - |chef_server_url| For example:
       ::
 
          chef_server_url "http://localhost:4000"
   * - ``client_registration_retries``
     - |client_registration_retries| For example:
       ::
 
          client_registration_retries 5
   * - ``client_url``
     - |client_url| For example:
       ::
 
          client_url "http://localhost:4042"
   * - ``cookbook_path``
     - |cookbook_path subdirectory| For example:
       ::
 
          cookbook_path [ 
            "/var/chef/cookbooks", 
            "/var/chef/site-cookbooks" 
          ]
   * - ``cookbook_tarball_path``
     - |cookbook_tarball_path| For example:
       ::
 
          cookbook_tarball_path "/var/chef/cookbook-tarballs"
   * - ``couchdb_database``
     - |couchdb_database| For example:
       ::
 
          couchdb_database "chef"
   * - ``couchdb_url``
     - |couchdb_url| For example:
       ::
 
          couchdb_url "http://localhost:5984"
   * - ``couchdb_version``
     - |couchdb_version| For example:
       ::
 
          couchdb_version nil
   * - ``data_bag_path``
     - |data_bag_path| For example:
       ::
 
          data_bag_path "/var/chef/databags"
   * - ``environment``
     - |environment config| For example:
       ::
 
          environment "production"
   * - ``file_cache_path``
     - |file_cache_path| For example:
       ::
 
          file_cache_path "/var/chef/cache"
   * - ``file_backup_path``
     - |file_backup_path| For example:
       ::
 
          file_backup_path "/var/chef/backup"
   * - ``group``
     - |group config| For example:
       ::
 
          group nil
   * - ``http_proxy``
     - |http_proxy| For example:
       ::
 
          http_proxy "http://proxy.vmware.com:3128"
   * - ``http_proxy_pass``
     - |http_proxy_pass| For example:
       ::
 
          http_proxy_pass "1234567890"
   * - ``http_proxy_user``
     - |http_proxy_user| For example:
       ::
 
          http_proxy_user "my_username"
   * - ``http_retry_count``
     - |http_retry_count| For example:
       ::
 
          http_retry_count 5
   * - ``http_retry_delay``
     - |http_retry_delay| For example:
       ::
 
          http_retry_delay 5
   * - ``https_proxy``
     - |https_proxy| For example:
       ::
 
          https_proxy "http://proxy.vmware.com:3128"
   * - ``interval``
     - |interval| For example:
       ::
 
          interval 1800
   * - ``json_attribs``
     - |json_attribs| For example:
       ::
 
          json_attribs nil
   * - ``log_level``
     - |log_level| For example:
       ::
 
          log_level :info
   * - ``log_location``
     - |log_location| For example:
       ::
 
          log_location STDOUT
   * - ``node_name``
     - |node_name| For example:
       ::
 
          node_name "mynode.example.com"
   * - ``node_path``
     - |node_path| For example:
       ::
 
          node_path "/var/chef/node"
   * - ``no_proxy``
     - |no_proxy| For example:
       ::
 
          no_proxy "*.vmware.com,10.*"
   * - ``openid_cstore_couchdb``
     - |openid_cstore_couchdb| For example:
       ::
 
          openid_cstore_couchdb false
   * - ``openid_cstore_path``
     - |openid_cstore_path| For example:
       ::
 
          openid_cstore_path "/var/chef/openid/cstore"
   * - ``pid_file``
     - |pid_file| For example:
       ::
 
          pid_file "/tmp/executable.pid"
   * - ``recipe_url``
     - |recipe_url| For example:
       ::
 
          recipe_url "http://path/to/remote/cookbook"
   * - ``rest_timeout``
     - |rest_timeout| For example:
       ::
 
          rest_timeout 300
   * - ``role_path``
     - |role_path| For example:
       ::
 
          role_path "/var/chef/roles"
   * - ``signing_ca_cert``
     - |signing_ca_cert| For example:
       ::
 
          signing_ca_cert "/var/chef/ca/cert.pem"
   * - ``signing_ca_key``
     - |signing_ca_key| For example:
       ::
 
          signing_ca_key "/var/chef/ca/key.pem"
   * - ``signing_ca_user``
     - |signing_ca_user| For example:
       ::
 
          signing_ca_user nil
   * - ``signing_ca_group``
     - |signing_ca_group| For example:
       ::
 
          signing_ca_group nil
   * - ``signing_ca_country``
     - |signing_ca_country| For example:
       ::
 
          signing_ca_country "US"
   * - ``signing_ca_state``
     - |signing_ca_state| For example:
       ::
 
          signing_ca_state "Washington"
   * - ``signing_ca_location``
     - |signing_ca_location| For example:
       ::
 
          signing_ca_location "Seattle"
   * - ``signing_ca_org``
     - |signing_ca_org| For example:
       ::
 
          signing_ca_org "Chef User"
   * - ``signing_ca_domain``
     - |signing_ca_domain| For example:
       ::
 
          signing_ca_domain "opensource.opscode.com"
   * - ``signing_ca_email``
     - |signing_ca_email| For example:
       ::
 
          signing_ca_email "opensource-cert@opscode.com"
   * - ``solo``
     - |solo mode| For example:
       ::
 
          solo false
   * - ``solr_data_path````.
     - |solr_data_path| For example:
       ::
 
          solr_data_path "/var/chef/solr/data"
   * - ``solr_heap_size``
     - |solr_heap_size| For example:
       ::
 
          solr_heap_size 256M
   * - ``solr_home_path``
     - |solr_home_path| For example:
       ::
 
          solr_home_path "/var/chef/solr"
   * - ``solr_java_opts``
     - |solr_java_opts| For example:
       ::
 
          solr_java_opts nil
   * - ``solr_jetty_path``
     - |solr_jetty_path| For example:
       ::
 
          solr_jetty_path "/var/chef/solr-jetty"
   * - ``solr_url``
     - |solr_url| For example:
       ::
 
          solr_url "http://localhost:8983"
   * - ``splay``
     - |splay| For example:
       ::
 
          splay
   * - ``ssl_client_cert``
     - |ssl_client_cert| For example:
       ::
 
          ssl_client_cert ""
   * - ``ssl_client_key``
     - |ssl_client_key| For example:
       ::
 
          ssl_client_key ""
   * - ``ssl_ca_path``
     - |ssl_ca_path| For example:
       ::
 
          ssl_ca_path nil "/etc/ssl/certs"
   * - ``ssl_ca_file``
     - |ssl_ca_file| For example:
       ::
 
          ssl_ca_file nil
   * - ``ssl_verify_mode``
     - |ssl_verify_mode| For example, on an |ubuntu| system:
       ::
 
          ssl_verify_mode :verify_peer
   * - ``umask``
     - |umask| For example:
       ::
 
          umask 0022
   * - ``user``
     - |user rb setting| For example:
       ::
 
          user nil
   * - ``validation_key``
     - |validation_key| For example:
       ::
 
          validation_key "/etc/chef/validation.pem"
   * - ``validation_client_name``
     - |validation_client_name| For example:
       ::
 
          validation_client_name "chef-validator"
   * - ``verbose_logging``
     - |verbose_logging| For example, when ``verbose_logging`` is set to ``true`` or ``nil``:
       ::
 
          [date] INFO: *** Chef 0.10.6.rc.1 ***
          [date] INFO: Setting the run_list 
                       to ["recipe[a-verbose-logging]"] from JSON
          [date] INFO: Run List is [recipe[a-verbose-logging]]
          [date] INFO: Run List expands to [a-verbose-logging]
          [date] INFO: Starting Chef Run for some_node
          [date] INFO: Running start handlers
          [date] INFO: Start handlers complete.
          [date] INFO: Loading cookbooks [test-verbose-logging]
          [date] INFO: Processing file[/tmp/a1] action create  
                       (a-verbose-logging::default line 20)
          [date] INFO: Processing file[/tmp/a2] action create  
                       (a-verbose-logging::default line 21)
          [date] INFO: Processing file[/tmp/a3] action create  
                       (a-verbose-logging::default line 22)
          [date] INFO: Processing file[/tmp/a4] action create  
                       (a-verbose-logging::default line 23)
          [date] INFO: Chef Run complete in 1.802127 seconds
          [date] INFO: Running report handlers
          [date] INFO: Report handlers complete

       When ``verbose_logging`` is set to ``false`` (for the same output):
       ::

          [date] INFO: *** Chef 0.10.6.rc.1 ***
          [date] INFO: Setting the run_list 
                       to ["recipe[a-verbose-logging]"] from JSON
          [date] INFO: Run List is [recipe[a-verbose-logging]]
          [date] INFO: Run List expands to [a-verbose-logging]
          [date] INFO: Starting Chef Run for some_node
          [date] INFO: Running start handlers
          [date] INFO: Start handlers complete.
          [date] INFO: Loading cookbooks [a-verbose-logging]
          [date] INFO: Chef Run complete in 1.565369 seconds
          [date] INFO: Running report handlers
          [date] INFO: Report handlers complete

       Where in the examples above, ``[date]`` represents the date and time the long entry was created. For example: ``[Mon, 21 Nov 2011 09:37:39 -0800]``.
   * - ``web_ui_admin_default_password``
     - |web_ui_admin_default_password| For example:
       ::
 
          web_ui_admin_default_password "p@ssw0rd1"
   * - ``web_ui_admin_user_name``
     - |web_ui_admin_user_name| For example:
       ::
 
          web_ui_admin_user_name  "admin"
   * - ``web_ui_client_name``
     - |web_ui_client_name| For example:
       ::
 
          web_ui_client_name "chef-webui"
   * - ``web_ui_key``
     - |web_ui_key| For example:
       ::
 
          web_ui_key "/etc/chef/webui.pem"