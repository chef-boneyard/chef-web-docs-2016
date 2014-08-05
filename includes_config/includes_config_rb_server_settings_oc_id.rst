.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``oc-id``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``oc_id['administrators']``
     - A comma-separated list of users who may add applications to the identity service. Default value: ``[ ]``.
   * - ``oc_id['db_pool_size']``
     - |db_pool_size| Default value: ``'20'``.
   * - ``oc_id['dir']``
     - |directory generic| |default_value_recommended| Default value: none.
   * - ``oc_id['enable']``
     - |enable service| Default value: ``true``.
   * - ``oc_id['ha']``
     - |use ha| Default value: ``false``.
   * - ``oc_id['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/opt/opscode/oc_id"``.
   * - ``oc_id['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``oc_id['num_to_keep']``
     - |num_to_keep| Default value: ``10``.
   * - ``oc_id['port']``
     - |port service| Default value: ``9090``.
   * - ``oc_id['sql_database']``
     - The name of the database. Default value: ``oc_id``.
   * - ``oc_id['sql_password']``
     - The password for the ``sql_user``. Default value: ``snakepliskin``.
   * - ``oc_id['sql_user']``
     - The user with permission to write to ``sql_databas``. Default value: ``oc_id``.
   * - ``oc_id['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``.


