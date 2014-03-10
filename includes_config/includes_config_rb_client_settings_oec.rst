.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``add_formatter``
     - |add_formatter| (See `nyan-cat <https://github.com/andreacampi/nyan-cat-chef-formatter>`_ for an example of a 3rd-party formatter.) Each formatter requires its own entry. For example:
       ::
 
          add_formatter :nyan
          add_formatter :foo
          add_formatter :bar
   * - ``cache_path``
     - Optional. |cache_path| For example:
       ::
 
          cache_path "~/.chef/cache"
 
       or:
       ::

          cache_path File.join(File.expand_path("~"), ".chef", "cache")
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
   * - ``cookbook_path``
     - |cookbook_path subdirectory| For example:
       ::
 
          cookbook_path [ 
            "/var/chef/cookbooks", 
            "/var/chef/site-cookbooks" 
          ]
   * - ``data_bag_decrypt_minimum_version``
     - |data_bag_decrypt_minimum_version| For example:
       ::
 
          data_bag_decrypt_minimum_version "2"
   * - ``diff_disabled``
     - |diff_disabled| Default value: ``false``. For example:
       ::
 
          diff_disabled false
   * - ``diff_filesize_threshold``
     - |diff_filesize_threshold| Default value: ``10000000``. For example:
       ::
 
          diff_filesize_threshold 10000000
   * - ``diff_output_threshold``
     - |diff_output_threshold| Default value: ``1000000``. For example:
       ::
 
          diff_output_threshold 1000000
   * - ``enable_reporting``
     - |enable reporting| 

       .. warning:: This setting is available only when using |reporting|, an add-on for |chef server oec| that collects reporting data about nodes.

       For example:
       ::
 
          enable_reporting true
   * - ``enable_reporting_url_fatals``
     - |enable reporting_url_fatals|

       .. warning:: This setting is available only when using |reporting|, an add-on for |chef server oec| that collects reporting data about nodes.

       For example:
       ::
 
          enable_reporting_url_fatals false
   * - ``enable_selinux_file_permission_fixup``
     - |enable_selinux_file_permission_fixup| For example:
       ::
 
          enable_selinux_file_permission_fixup true
   * - ``environment``
     - |name environment| For example:
       ::
 
          environment "production"
   * - ``file_atomic_update``
     - |file atomic_update| Default value: ``true``. For example:
       ::
 
          file_atomic_update true
   * - ``file_backup_path``
     - |path file_backup| Default value: ``/var/chef/backup``. For example:
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
     - |http_proxy| Default value: ``nil``. For example:
       ::
 
          http_proxy "http://proxy.vmware.com:3128"
   * - ``http_proxy_pass``
     - |http_proxy_pass| Default value: ``nil``. For example:
       ::
 
          http_proxy_pass "1234567890"
   * - ``http_proxy_user``
     - |http_proxy_user| Default value: ``nil``. For example:
       ::
 
          http_proxy_user "my_username"
   * - ``http_retry_count``
     - |http_retry_count| Default value: ``5``. For example:
       ::
 
          http_retry_count 5
   * - ``http_retry_delay``
     - |http_retry_delay| Default value: ``5``. For example:
       ::
 
          http_retry_delay 5
   * - ``https_proxy``
     - |https_proxy| Default value: ``nil``. For example:
       ::
 
          https_proxy "http://proxy.vmware.com:3128"
   * - ``https_proxy_pass``
     - |https_proxy_pass| Default value: ``nil``. For example:
       ::
 
          https_proxy_pass "1234567890"
   * - ``https_proxy_user``
     - |https_proxy_user| Default value: ``nil``. For example:
       ::
 
          httpx_proxy_user "my_username"
   * - ``interval``
     - |interval| Default value: ``1800``. For example:
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
     - |log_level| Possible levels: ``:auto`` (default), ``debug``, ``info``, ``warn``, ``error``, or ``fatal``. For example:
       ::
 
          log_level :info
   * - ``log_location``
     - |log_location| Default value: ``STDOUT``. For example:
       ::
 
          log_location STDOUT
   * - ``no_lazy_load``
     - |no_lazy_load| Default value: ``false``. For example:
       ::
 
          no_lazy_load false
   * - ``no_proxy``
     - |no_proxy| Default value: ``nil``. For example:
       ::
 
          no_proxy "*.vmware.com,10.*"
   * - ``node_name``
     - |name node| This is used to determine which configuration should be applied and to set the ``client_name`` (which is the name used when authenticating to a |chef server|). The default value is set automatically to be the |fqdn| of the |chef client|, as detected by |ohai|. In general, leaving this setting blank and letting |ohai| assign the |fqdn| of the node as the ``node_name`` during each |chef client| run is the recommended approach. For example:
       ::
 
          node_name "mynode.example.com"
   * - ``node_path``
     - |node_path| Default value: ``/var/chef/node``. For example:
       ::
 
          node_path "/var/chef/node"
   * - ``pid_file``
     - |path pid_file| Default value: ``/tmp/name-of-executable.pid``. For example:
       ::
 
          pid_file "/tmp/chef-client.pid"
   * - ``rest_timeout``
     - |timeout rest| For example:
       ::
 
          rest_timeout 300
   * - ``splay``
     - |splay| Default value: ``nil``. For example:
       ::
 
          splay nil
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
     - |ssl_verify_mode|
       
       * |ssl_verify_mode_verify_none|
       * |ssl_verify_mode_verify_peer| This is the recommended setting.
       * |ssl_verify_mode_verify_api_cert|
       
       Depending on how |open ssl| is configured, the ``ssl_ca_path`` may need to be specified. For example:
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
     - |validation_key| Default value: ``/etc/chef/validation.pem``. For example:
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
   * - ``whitelist``
     - The path to the attribute file that contains the whitelist used by |push jobs|.

       .. warning:: This setting is available only when using |push jobs|, a tool that runs jobs against nodes in a |chef server oec| organization.
