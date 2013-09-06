.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the |service authz| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_authz['caching']``
     - Default value: ``"enabled"``. For example:
       ::

          opscode_authz['caching'] = "enabled"

   * - ``opscode_authz['dir']``
     - Default value: ``"/var/opt/opscode/opscode-authz"``. For example:
       ::

          opscode_authz['dir'] = "/var/opt/opscode/opscode-authz"

   * - ``opscode_authz['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_authz['enable'] = true

   * - ``opscode_authz['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_authz['ha'] = false

   * - ``opscode_authz['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-authz"``. For example:
       ::

          opscode_authz['log_directory'] = "/var/log/opscode/opscode-authz"

   * - ``opscode_authz['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_authz['svlogd_size'] = 1000000

   * - ``opscode_authz['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_authz['svlogd_num'] = 10

   * - ``opscode_authz['port']``
     - |port opscode_authz| Default value: ``9463``. For example:
       ::

          opscode_authz['port'] = 9463

   * - ``opscode_authz['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1"``. For example:
       ::

          opscode_authz['vip'] = "127.0.0.1"

