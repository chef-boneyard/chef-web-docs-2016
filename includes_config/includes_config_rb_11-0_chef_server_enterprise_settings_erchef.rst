.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service erchef| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_erchef['auth_skew']``
     - Default value: ``900``.
   * - ``opscode_erchef['bulk_fetch_batch_size']``
     - Default value: ``5``.
   * - ``opscode_erchef['cache_ttl']``
     - Default value: ``3600``.
   * - ``opscode_erchef['couchdb_max_conn']``
     - Default value: ``'100'``.
   * - ``opscode_erchef['db_pool_size']``
     - |db_pool_size| Default value: ``20``.
   * - ``opscode_erchef['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/erchef``.
   * - ``opscode_erchef['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_erchef['ha']``
     - |use ha| Default value: ``false``.
   * - ``opscode_erchef['ibrowse_max_pipeline_size']``
     - Default value: ``1``.
   * - ``opscode_erchef['ibrowse_max_sessions']``
     - Default value: ``256``.
   * - ``opscode_erchef['listen']``
     - Default value: ``127.0.0.1``.
   * - ``opscode_erchef['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/erchef``.
   * - ``opscode_erchef['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_erchef['max_cache_size']``
     - Default value: ``10000``.
   * - ``opscode_erchef['port']``
     - |port service| Default value: ``8000``.
   * - ``opscode_erchef['proxy_user']``
     - Default value: ``pivotal``.
   * - ``opscode_erchef['root_metric_key']``
     - Default value: ``chefAPI``.
   * - ``opscode_erchef['s3_bucket']``
     - Default value: ``bookshelf``.
   * - ``opscode_erchef['s3_parallel_ops_fanout']``
     - Default value: ``20``.
   * - ``opscode_erchef['s3_parallel_ops_timeout']``
     - Default value: ``5000``.
   * - ``opscode_erchef['s3_url_ttl']``
     - Default value: ``900``.
   * - ``opscode_erchef['umask']``
     - Default value: ``0022``.
   * - ``opscode_erchef['validation_client_name']``
     - Default value: ``chef-validator``.
   * - ``opscode_erchef['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
   * - ``opscode_erchef['web_ui_client_name']``
     - Default value: ``chef-webui``.
