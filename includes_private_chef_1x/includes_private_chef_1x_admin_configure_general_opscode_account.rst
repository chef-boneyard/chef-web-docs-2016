.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the |service account| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_account['backlog']``
     - Default value: ``1024``. For example:
       ::

          opscode_account['backlog'] = 1024

   * - ``opscode_account['dir']``
     - Default value: ``"/var/opt/opscode/opscode-account"``. For example:
       ::

          opscode_account['dir'] = "/var/opt/opscode/opscode-account"

   * - ``opscode_account['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          opscode_account['enable'] = true

   * - ``opscode_account['environment']``
     - Default value: ``"privatechef"``. For example:
       ::

          opscode_account['environment'] = "privatechef"

   * - ``opscode_account['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          opscode_account['ha'] = false

   * - ``opscode_account['listen']``
     - Default value: ``"127.0.0.1:9465"``. For example:
       ::

          opscode_account['listen'] = "127.0.0.1:9465"

   * - ``opscode_account['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-account"``. For example:
       ::

          opscode_account['log_directory'] = "/var/log/opscode/opscode-account"

   * - ``opscode_account['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_account['svlogd_size'] = 1000000

   * - ``opscode_account['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_account['svlogd_num'] = 10

   * - ``opscode_account['port']``
     - Default value: ``9465``. For example:
       ::

          opscode_account['port'] = 9465

   * - ``opscode_account['proxy_user']``
     - Default value: ``"pivotal"``. For example:
       ::

          opscode_account['proxy_user'] = "pivotal"

   * - ``opscode_account['session_secret_key']``
     - Default value: ``"change-by-default"``. For example:
       ::

          opscode_account['session_secret_key'] = "change-by-default"

   * - ``opscode_account['tcp_nodelay']``
     - Default value: ``true``. For example:
       ::

          opscode_account['tcp_nodelay'] = true

   * - ``opscode_account['umask']``
     - Default value: ``"0022"``. For example:
       ::

          opscode_account['umask'] = "0022"

   * - ``opscode_account['url']``
     - Default value: ``"http://127.0.0.1:9465"``. For example:
       ::

          opscode_account['url'] = "http://127.0.0.1:9465"

   * - ``opscode_account['validation_client_name']``
     - Default value: ``"chef"``. For example:
       ::

          opscode_account['validation_client_name'] = "chef"

   * - ``opscode_account['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_account['vip'] = "127.0.0.1"

   * - ``opscode_account['worker_processes']``
     - Default value: ``4``. For example:
       ::

          opscode_account['worker_processes'] = 4

   * - ``opscode_account['worker_timeout']``
     - Default value: ``3600``. For example:
       ::

          opscode_account['worker_timeout'] = 3600

