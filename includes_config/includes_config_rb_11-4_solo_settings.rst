.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
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
   * - ``checksum_path``
     - |checksum_path| For example:
       ::
 
          checksum_path "path_to_folder"
   * - ``cookbook_path``
     - |cookbook_path subdirectory| For example:
       ::
 
          cookbook_path [ 
            "/var/chef/cookbooks", 
            "/var/chef/site-cookbooks" 
          ]
   * - ``data_bag_path``
     - |data_bag_path| For example:
       ::
 
          data_bag_path "/var/chef/databags"
   * - ``file_cache_path``
     - |file_cache_path| For example:
       ::
 
          file_cache_path "/var/chef/cache"
   * - ``file_backup_path``
     - |file_backup_path| For example:
       ::
 
          file_backup_path "/var/chef/backup"
   * - ``json_attribs``
     - |json_attribs| For example:
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
   * - ``openid_cstore_couchdb``
     - |openid_cstore_couchdb| Default value: ``false``. For example:
       ::
 
          openid_cstore_couchdb false
   * - ``openid_cstore_path``
     - |openid_cstore_path| Default value: ``/var/chef/openid/cstore``. For example:
       ::
 
          openid_cstore_path "/var/chef/openid/cstore"
   * - ``recipe_url``
     - |recipe_url| For example:
       ::
 
          recipe_url "http://path/to/remote/cookbook"
   * - ``rest_timeout``
     - |rest_timeout| Default value: ``300``. For example:
       ::
 
          rest_timeout 300
   * - ``role_path``
     - |role_path| For example:
       ::
 
          role_path "/var/chef/roles"
   * - ``sandbox_path``
     - |sandbox_path| For example:
       ::
 
          sandbox_path "path_to_folder"
   * - ``solo``
     - |solo mode| For example:
       ::
 
          solo false
   * - ``syntax_check_cache_path``
     - |syntax_check_cache_path|
   * - ``umask``
     - |umask| Default value: ``0022``. For example:
       ::
 
          umask 0022
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
