.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service webui| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_webui['backlog']``
     - Default value: ``1024``.
   * - ``opscode_webui['cookie_domain']``
     - Default value: ``all``.
   * - ``opscode_webui['cookie_secret']``
     - Default value: ``47b3b8d95dea455baf32155e95d1e64e``.
   * - ``opscode_webui['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/chef-server-webui``.
   * - ``opscode_webui['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_webui['environment']``
     - Default value: ``privatechef``.
   * - ``opscode_webui['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``opscode_webui['listen']``
     - Default value: ``127.0.0.1:9462``.
   * - ``opscode_webui['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/chef-server-webui``.
   * - ``opscode_webui['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_webui['port']``
     - |port service| Default value: ``9462``.
   * - ``opscode_webui['session_key']``
     - Default value: ``_sandbox_session``.
   * - ``opscode_webui['tcp_nodelay']``
     - |use nagle| Default value: ``true``.
   * - ``opscode_webui['umask']``
     - |umask| Default value: ``0022``.
   * - ``opscode_webui['url']``
     - Default value: ``'http://127.0.0.1:9462'``.
   * - ``opscode_webui['validation_client_name']``
     - |webui validation_client_name| Default value: ``'chef'``.
   * - ``opscode_webui['vip']``
     - Default value: ``127.0.0.1``.
   * - ``opscode_webui['worker_processes']``
     - |worker_processes| Default value: ``2``.
   * - ``opscode_webui['worker_timeout']``
     - |timeout worker| Default value: ``3600``.
