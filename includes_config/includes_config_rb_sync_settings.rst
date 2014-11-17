.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``master``
     - Use to specify the root URL for the master |chef server|.
   * - ``name``
     - Default value: ``'sync'``.
   * - ``organization``
     - An array that specifies the source and destination organization pairs for synchronization.
   * - ``replica``
     - Use to specify the root URL for the replica |chef server|.
   * - ``role``
     - Use to specify if ``chef-sync`` is installed as a master |chef server|, a replica |chef server|, or both. Possible values: ``:master``, ``:master_and_replica``, ``:replica``. Default value: ``:replica``.
   * - ``bootstrap``
     - Indicates whether an attempt to bootstrap the |chef server| is made. Generally only enabled on systems that have bootstrap enabled via a ``server`` entry. Default value: ``true``.
   * - ``chef_base_path``
     - Default value: ``"/opt/opscode"``.
   * - ``install_path``
     - Default value: ``"/opt/chef-sync"``.
   * - ``ec_sync_client['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/chef-sync/ec_sync_client"``.
   * - ``ec_sync_client['enable']``
     - |enable service| Default value: ``true``.
   * - ``ec_sync_client['ha']``
     - |use ha| Default value: ``false``.
   * - ``ec_sync_client['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/chef-sync/client"``.
   * - ``ec_sync_client['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``ec_sync_client['master']``
     - Default value: ``'https://127.0.0.1'``.
   * - ``ec_sync_client['organizations']``
     - Default value: ``[]``.
   * - ``ec_sync_client['replica']``
     - Default value: ``'https://127.0.0.1'``.
   * - ``ec_sync_client['socket_path']``
     - Default value: ``"/var/opt/chef-sync/ec_sync_client/ec_sync.sock"``.
   * - ``ec_sync_client['sync_key']``
     - Default value: ``'/etc/chef-sync/ec_sync_user.pem'``.
   * - ``ec_sync_client['sync_user']``
     - Default value: ``'ec_sync_user'``.
   * - ``ec_sync_server['auth_skew']``
     - Default value: ``'900'``.
   * - ``ec_sync_server['db_pool_size']``
     - |db_pool_size| Default value: ``10``.
   * - ``ec_sync_server['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/chef-sync/ec_sync_server"``.
   * - ``ec_sync_server['enable']``
     - |enable service| Default value: ``true``.
   * - ``ec_sync_server['ha']``
     - |use ha| Default value: ``false``.
   * - ``ec_sync_server['listen']``
     - |ip_address service| Default value: ``'127.0.0.1'``.
   * - ``ec_sync_server['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/chef-sync/server"``.
   * - ``ec_sync_server['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``ec_sync_server['port']``
     - |port service| Default value: ``9996``.
   * - ``ec_sync_server['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
   * - ``user['home']``
     - The home directory for the user under which |chef server| services run. Default value: ``/opt/opscode/embedded``.
   * - ``user['shell']``
     - The shell for the user under which |chef server| services run. Default value: ``/bin/sh``.
   * - ``user['username']``
     - The user name under which |chef server| services run. Default value: ``opscode``.
