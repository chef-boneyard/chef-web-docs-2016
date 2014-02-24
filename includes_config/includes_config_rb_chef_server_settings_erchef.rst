.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``erchef['auth_skew']``
     - Default value: ``900``.
   * - ``erchef['bulk_fetch_batch_size']``
     - Default value: ``5``.
   * - ``erchef['cache_ttl']``
     - Default value: ``3600``.
   * - ``erchef['db_pool_size']``
     - Default value: ``20``.
   * - ``erchef['dir']``
     - Default value: ``/var/opt/chef-server/erchef``.
   * - ``erchef['enable']``
     - Default value: ``true``.
   * - ``erchef['ha']``
     - |use ha| Default value: ``false``.
   * - ``erchef['ibrowse_max_pipeline_size']``
     - Default value: ``1``.
   * - ``erchef['ibrowse_max_sessions']``
     - Default value: ``256``.
   * - ``erchef['listen']``
     - Default value: ``127.0.0.1``.
   * - ``erchef['log_directory']``
     - The directory in which log files are located. Default value: ``/var/log/chef-server/erchef``.
   * - ``erchef['max_cache_size']``
     - Default value: ``10000``.
   * - ``erchef['port']``
     - |port opscode_erchef| Default value: ``8000``.
   * - ``erchef['proxy_user']``
     - Default value: ``pivotal``.
   * - ``erchef['root_metric_key']``
     - Default value: ``chefAPI``.
   * - ``erchef['s3_bucket']``
     - Default value: ``bookshelf``.
   * - ``erchef['s3_parallel_ops_fanout']``
     - Default value: ``20``.
   * - ``erchef['s3_parallel_ops_timeout']``
     - Default value: ``5000``.
   * - ``erchef['s3_url_ttl']``
     - The amount of time (in seconds) before the |chef client| run will time out. Default value: ``900``.
   * - ``erchef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``.
   * - ``erchef['svlogd_num']``
     - |svlogd_num| Default value: ``10``.
   * - ``erchef['umask']``
     - Default value: ``0022``.
   * - ``erchef['validation_client_name']``
     - Default value: ``chef-validator``.
   * - ``erchef['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
   * - ``erchef['web_ui_client_name']``
     - Default value: ``chef-webui``.
