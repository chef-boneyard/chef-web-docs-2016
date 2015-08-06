.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``oc-id``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``oc_id['administrators']``
     - |user ocid_admins| For example, ``['user1', 'user2']``. Default value: ``[ ]``.
   * - ``oc_id['applications']``
     - |application ocid| Default value: ``{ }``. For example:

       .. code-block:: ruby

		  oc_id['applications'] = {
		    'analytics' => {
		      'redirect_uri' => 'https://analytics.rhel.aws'
		    },
		    'supermarket' => {
		      'redirect_uri' => 'https://default-ubuntu-1204.vagrantup.com/auth/chef_oauth2/callback'
		    }
		  }
   * - ``oc_id['db_pool_size']``
     - |db_pool_size| Default value: ``'20'``.
   * - ``oc_id['dir']``
     - |directory generic| |default_value_recommended| Default value: none.
   * - ``oc_id['enable']``
     - |enable service| Default value: ``true``.
   * - ``oc_id['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``oc_id['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``'/var/opt/opscode/oc_id'``.
   * - ``oc_id['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``oc_id['num_to_keep']``
     - |num_to_keep| Default value: ``10``.
   * - ``oc_id['port']``
     - |port service| Default value: ``9090``.
   * - ``oc_id['sql_database']``
     - |name db_ocid| Default value: ``oc_id``.
   * - ``oc_id['sql_password']``
     - |password sql_user| Default value: ``snakepliskin``.
   * - ``oc_id['sql_user']``
     - |user ocid| Default value: ``oc_id``.
   * - ``oc_id['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
