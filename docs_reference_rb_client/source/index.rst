=====================================================
client.rb
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt
.. include:: ../../swaps/swap_resources.txt

.. include:: ../../includes_config/includes_config_rb_client.rst

Settings
==========================================================================
This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``cache_options``
     - |cache_options| For example:
       ::
 
          ``cache_options({ :path => "/var/chef/cache/checksums", :skip_expires => true })``
   * - ``cache_type``
     - |cache_type| For example:
       ::
 
          ``cache_type "BasicFile"``
   * - ``chef_server_url``
     - |chef_server_url| For example:
       ::
 
          ``chef_server_url "http://localhost:4000"``
   * - ``client_key``
     - |client_key| For example:
       ::
 
          ``client_key "/etc/chef/client.pem"``
   * - ``client_registration_retries``
     - |client_registration_retries| For example:
       ::
 
          ``client_registration_retries 5``
   * - ``client_url``
     - |client_url| For example:
       ::
 
          ``client_url "http://localhost:4042"``
   * - ``cookbook_path``
     - |cookbook_path subdirectory| For example:
       ::
 
          ``cookbook_path [ "/var/chef/cookbooks", "/var/chef/site-cookbooks" ]``
   * - ``environment``
     - |environment config| For example:
       ::
 
          ``environment "production"``
   * - ``file_backup_path``
     - |file_backup_path| For example:
       ::
 
          ``file_backup_path "/var/chef/backup"``
   * - ``file_cache_path``
     - |file_cache_path| For example:
       ::
 
          ``file_cache_path "/var/chef/cache"``
   * - ``group``
     - |group config| For example:
       ::
 
          ``group nil``
   * - ``http_proxy``
     - |http_proxy| For example:
       ::
 
          ``http_proxy "http://proxy.vmware.com:3128"``
   * - ``http_proxy_pass``
     - |http_proxy_pass| For example:
       ::
 
          ``http_proxy_pass "1234567890"``
   * - ``http_proxy_user``
     - |http_proxy_user| For example:
       ::
 
          ``http_proxy_user "my_username"``
   * - ``http_retry_count``
     - |http_retry_count| For example:
       ::
 
          ``http_retry_count 5``
   * - ``http_retry_delay``
     - |http_retry_delay| For example:
       ::
 
          ``http_retry_delay 5``
   * - ``https_proxy``
     - |https_proxy| For example:
       ::
 
          ``https_proxy "http://proxy.vmware.com:3128"``
   * - ``interval``
     - |interval| For example:
       ::
 
          ``interval 1800``
   * - ``json_attribs``
     - |json_attribs| For example:
       ::
 
          ``json_attribs nil``
   * - ``log_level``
     - |log_level| For example:
       ::
 
          ``log_level :info``
   * - ``log_location``
     - |log_location| For example:
       ::
 
          ``log_location STDOUT``
   * - ``no_proxy``
     - |no_proxy| For example:
       ::
 
          ``no_proxy "*.vmware.com,10.*"``
   * - ``node_name``
     - |node_name| **jamescott: WHATEVER IS HERE IS THE NODE NAME. OPSCODE SUGGESTS LEAVING THIS BLANK AND LETTING OHAI COLLECT THE FQDN IS THE BEST APPROACH.** For example:
       ::
 
          ``node_name``
   * - ``node_path``
     - |node_path| For example:
       ::
 
          ``node_path "/var/chef/node"``
   * - ``pid_file``
     - |pid_file| For example:
       ::
 
          ``pid_file "/tmp/executable.pid"``
   * - ``rest_timeout``
     - |rest_timeout| For example:
       ::
 
          ``rest_timeout 300``
   * - ``splay``
     - |splay| For example:
       ::
 
          ``splay``
   * - ``ssl_ca_file``
     - |ssl_ca_file| For example:
       ::
 
          ``ssl_ca_file nil``
   * - ``ssl_ca_path``
     - |ssl_ca_path| For example:
       ::
 
          ``ssl_ca_path nil "/etc/ssl/certs"``
   * - ``ssl_client_cert``
     - |ssl_client_cert| For example:
       ::
 
          ``ssl_client_cert ""``
   * - ``ssl_client_key``
     - |ssl_client_key| For example:
       ::
 
          ``ssl_client_key ""``
   * - ``ssl_verify_mode``
     - |ssl_verify_mode| For example, on an |ubuntu| system:
       ::
 
          ``ssl_verify_mode :verify_peer``
   * - ``umask``
     - |umask| For example:
       ::
 
          ``umask 0022``
   * - ``user``
     - |user rb setting| For example:
       ::
 
          ``user nil``
   * - ``validation_client_name``
     - |validation_client_name| For example:
       ::
 
          ``validation_client_name "chef-validator"``
   * - ``validation_key``
     - |validation_key| For example:
       ::
 
          ``validation_key "/etc/chef/validation.pem"``
   * - ``verbose_logging``
     - |verbose_logging| For example, when ``verbose_logging`` is set to ``true`` or ``nil``:
       ::
 
          [date] INFO: *** Chef 0.10.6.rc.1 ***
          [date] INFO: Setting the run_list to ["recipe[a-verbose-logging]"] from JSON
          [date] INFO: Run List is [recipe[a-verbose-logging]]
          [date] INFO: Run List expands to [a-verbose-logging]
          [date] INFO: Starting Chef Run for some_node
          [date] INFO: Running start handlers
          [date] INFO: Start handlers complete.
          [date] INFO: Loading cookbooks [test-verbose-logging]
          [date] INFO: Processing file[/tmp/a1] action create (a-verbose-logging::default line 20)
          [date] INFO: Processing file[/tmp/a2] action create (a-verbose-logging::default line 21)
          [date] INFO: Processing file[/tmp/a3] action create (a-verbose-logging::default line 22)
          [date] INFO: Processing file[/tmp/a4] action create (a-verbose-logging::default line 23)
          [date] INFO: Chef Run complete in 1.802127 seconds
          [date] INFO: Running report handlers
          [date] INFO: Report handlers complete

       When ``verbose_logging`` is set to ``false`` (for the same output):
       ::

          [date] INFO: *** Chef 0.10.6.rc.1 ***
          [date] INFO: Setting the run_list to ["recipe[a-verbose-logging]"] from JSON
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







