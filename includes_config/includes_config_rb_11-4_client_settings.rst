.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_server_url``
     - |chef_server_url| For example:
       ::
 
          chef_server_url "http://localhost:4000"
   * - ``client_key``
     - |client_key| Default value: ``/etc/chef/client.pem``. For example:
       ::
 
          client_key "/etc/chef/client.pem"
   * - ``client_registration_retries``
     - |client_registration_retries| Default value: ``5``. For example:
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
   * - ``data_bag_decrypt_minimum_version``
     - The minimum required version of data bag encryption. Possible values: ``0``, ``1``, and ``2``. When all of the machines in an organization are running |chef client| version 11.6 (or higher), it is recommended that this value be set to ``2``. For example:
       ::
 
          data_bag_decrypt_minimum_version "2"
   * - ``environment``
     - |name environment| This is typically set from the command line (using the ``-E`` option) or in the |client rb| configuration file. For example:
       ::
 
          environment "production"
   * - ``file_backup_path``
     - |file backup_path| For example:
       ::
 
          file_backup_path "/var/chef/backup"
   * - ``file_cache_path``
     - |file cache_path| For example:
       ::
 
          file_cache_path "/var/chef/cache"
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
     - |json attributes| For example:
       ::
 
          json_attribs nil
   * - ``lockfile``
     - |lockfile| For example:
       ::
 
          lockfile nil
   * - ``log_level``
     - |log_level| For example:
       ::
 
          log_level :info
   * - ``log_location``
     - |log_location| Default value: ``STDOUT``. For example:
       ::
 
          log_location STDOUT
   * - ``no_proxy``
     - |no_proxy| For example:
       ::
 
          no_proxy "*.vmware.com,10.*"
   * - ``node_name``
     - |node_name| In general, leaving this setting blank and letting |ohai| assign the |fqdn| of the node as the ``node_name`` during each |chef| run is the recommended approach. For example:
       ::
 
          node_name "mynode.example.com"
   * - ``node_path``
     - |node_path| For example:
       ::
 
          node_path "/var/chef/node"
   * - ``pid_file``
     - |pid_file| For example:
       ::
 
          pid_file "/tmp/chef-client.pid"
   * - ``rest_timeout``
     - |rest_timeout| Default value: ``300``. For example:
       ::
 
          rest_timeout 300
   * - ``splay``
     - |splay| For example:
       ::
 
          splay
   * - ``ssl_ca_file``
     - |ssl_ca_file| For example:
       ::
 
          ssl_ca_file nil
   * - ``ssl_ca_path``
     - |ssl_ca_path| For example:
       ::
 
          ssl_ca_path nil "/etc/ssl/certs"
   * - ``ssl_client_cert``
     - |ssl_client_cert| For example:
       ::
 
          ssl_client_cert ""
   * - ``ssl_client_key``
     - |ssl_client_key| For example:
       ::
 
          ssl_client_key ""
   * - ``ssl_verify_mode``
     - |ssl_verify_mode| For example, on an |ubuntu| system:
       ::
 
          ssl_verify_mode :verify_peer
   * - ``syntax_check_cache_path``
     - |syntax_check_cache_path|
   * - ``umask``
     - |umask| Default value: ``0022``. For example:
       ::
 
          umask 0022
   * - ``user``
     - |user chef_client| Default value: ``nil``. For example:
       ::
 
          user nil
   * - ``validation_client_name``
     - |validation_client_name| For example:
       ::
 
          validation_client_name "chef-validator"
   * - ``validation_key``
     - |validation_key| For example:
       ::
 
          validation_key "/etc/chef/validation.pem"
   * - ``verbose_logging``
     - |verbose_logging| Default value: ``nil``. For example, when ``verbose_logging`` is set to ``true`` or ``nil``:
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
..   * - ``whitelist``
..     - The path to the attribute file that contains the whitelist used by |pushy|.
..
..       .. warning:: This setting is available only when using |pushy|, a tool that runs jobs against nodes in a |chef private| organization.
