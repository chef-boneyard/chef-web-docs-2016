.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for opscode-erchef:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_erchef['auth_skew']``
     - Default value: ``"900"``. For example:
       ::

          opscode_erchef['auth_skew'] = "900"

   * - ``opscode_erchef['bulk_fetch_batch_size']``
     - Default value: ``"5"``. For example:
       ::

          opscode_erchef['bulk_fetch_batch_size'] = "5"

   * - ``opscode_erchef['cache_ttl']``
     - Default value: ``"3600"``. For example:
       ::

          opscode_erchef['cache_ttl'] = "3600"

   * - ``opscode_erchef['couchdb_max_conn']``
     - Default value: ``"100"``. For example:
       ::

          opscode_erchef['couchdb_max_conn'] = "100"

   * - ``opscode_erchef['db_pool_size']``
     - Default value: ``"20"``. For example:
       ::

          opscode_erchef['db_pool_size'] = "20"

   * - ``opscode_erchef['dir']``
     - Default value: ``"/var/opt/opscode/opscode-erchef"``. For example:
       ::

          opscode_erchef['dir'] = "/var/opt/opscode/opscode-erchef"

   * - ``opscode_erchef['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_erchef['enable'] = true

   * - ``opscode_erchef['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_erchef['ha'] = false

   * - ``opscode_erchef['listen']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_erchef['listen'] = "127.0.0.1"

   * - ``opscode_erchef['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-erchef"``. For example:
       ::

          opscode_erchef['log_directory'] = "/var/log/opscode/opscode-erchef"

   * - ``opscode_erchef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_erchef['svlogd_size'] = 1000000

   * - ``opscode_erchef['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_erchef['svlogd_num'] = 10

   * - ``opscode_erchef['max_cache_size']``
     - Default value: ``"10000"``. For example:
       ::

          opscode_erchef['max_cache_size'] = "10000"

   * - ``opscode_erchef['port']``
     - Default value: ``8000``. For example:
       ::

          opscode_erchef['port'] = 8000

   * - ``opscode_erchef['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_erchef['vip'] = "127.0.0.1"

