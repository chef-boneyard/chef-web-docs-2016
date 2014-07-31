.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``opscode-account``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_account['backlog']``
     - Default value: ``1024``.
   * - ``opscode_account['dir']``
     - |directory generic| |default_value_recommended| Default value: ``"/var/opt/opscode/opscode-account"``.
   * - ``opscode_account['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_account['enable_code_coverage']``
     - Default value: ``"false"``.
   * - ``opscode_account['environment']``
     - Default value: ``"privatechef"``.
   * - ``opscode_account['ha']``
     - |use ha| Default value: ``false``.
   * - ``opscode_account['listen']``
     - Default value: ``"127.0.0.1:9465"``.
   * - ``opscode_account['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``"/var/log/opscode/opscode-account"``.
   * - ``opscode_account['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``opscode_account['port']``
     - |port service| Default value: ``9465``.
   * - ``opscode_account['proxy_user']``
     - Default value: ``"pivotal"``.
   * - ``opscode_account['session_secret_key']``
     - Default value: ``"change-by-default"``.
   * - ``opscode_account['tcp_nodelay']``
     - |use nagle| Default value: ``true``.
   * - ``opscode_account['umask']``
     - Default value: ``"0022"``.
   * - ``opscode_account['url']``
     - Default value: ``"http://127.0.0.1:9465"``.
   * - ``opscode_account['validation_client_name']``
     - Default value: ``"chef"``.
   * - ``opscode_account['vip']``
     - |ip_address virtual| Default value: ``"127.0.0.1"``.
   * - ``opscode_account['worker_processes']``
     - |worker_processes| Default value: ``4``.
   * - ``opscode_account['worker_timeout']``
     - Default value: ``3600``.