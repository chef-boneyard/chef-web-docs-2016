.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|kitchen| relies on the following configuration settings from the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``checksum_path``
     - |checksum_path|
   * - ``chef_server_url``
     - |chef_server_url|
   * - ``client_key``
     - |client_key| Default value: ``/etc/chef/client.pem``.
   * - ``client_path``
     - The path to clients located in the ``/clients`` directory. Default value: ``"#{root}/clients"``.
   * - ``cookbook_path``
     - |cookbook_path subdirectory|
   * - ``data_bag_path``
     - |data_bag_path| Default value: ``/var/chef/data_bags``.
   * - ``encrypted_data_bag_secret``
     - The subdirectory in which encrypted data bag secrets are located.
   * - ``environment_path``
     - |path environment|  Default value: ``/var/chef/environments``.
   * - ``file_backup_path``
     - |path file_backup| Default value: ``/var/chef/backup``.
   * - ``file_cache_path``
     - |file cache_path|
   * - ``node_name``
     - |name node| This is used to determine which configuration should be applied and to set the ``client_name`` (which is the name used when authenticating to a |chef server|). The default value is set automatically to be the |fqdn| of the |chef client|, as detected by |ohai|. In general, leaving this setting blank and letting |ohai| assign the |fqdn| of the node as the ``node_name`` during each |chef client| run is the recommended approach.
   * - ``node_path``
     - |node_path| Default value: ``/var/chef/node``.
   * - ``role_path``
     - |path roles_chef| Default value: ``/var/chef/roles``.
   * - ``user_path``
     - The path to clients located in the ``/clients`` directory. Default value: ``"#{root}/users"``.
   * - ``validation_key``
     - |validation_key| Default value: ``/etc/chef/validation.pem``.

These settings may be added to the |kitchen yml| file to override the defaults in the |client rb| file, should any of these values be required when tuning any specific cookbook testing effort.