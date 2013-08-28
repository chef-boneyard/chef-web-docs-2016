.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_chef['backlog']``
     - Default value: ``1024``.
   * - ``opscode_chef['checksum_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/checksum"``.
   * - ``opscode_chef['dir']``
     - Default value: ``"/var/opt/opscode/opscode-chef"``.
   * - ``opscode_chef['enable']``
     - |enable service| Default value: ``true``.
   * - ``opscode_chef['environment']``
     - Default value: ``"privatechef"``.
   * - ``opscode_chef['ha']``
     - |use ha| Default value: ``false``.
   * - ``opscode_chef['listen']``
     - Default value: ``"127.0.0.1:9460"``.
   * - ``opscode_chef['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/opscode-chef"``.
   * - ``opscode_chef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``.
   * - ``opscode_chef['svlogd_num']``
     - |svlogd_num| Default value: ``10``.
   * - ``opscode_chef['port']``
     - Default value: ``9460``.
   * - ``opscode_chef['proxy_user']``
     - Default value: ``"pivotal"``.
   * - ``opscode_chef['sandbox_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/sandbox"``.
   * - ``opscode_chef['tcp_nodelay']``
     - Default value: ``true``.
   * - ``opscode_chef['umask']``
     - Default value: ``"0022"``.
   * - ``opscode_chef['upload_internal_port']``
     - Default value: ``9460``.
   * - ``opscode_chef['upload_internal_proto']``
     - Default value: ``"http"``.
   * - ``opscode_chef['upload_internal_vip']``
     - Default value: ``"127.0.0.1"``.
   * - ``opscode_chef['upload_port']``
     - Default value: ``9460``.
   * - ``opscode_chef['upload_proto']``
     - Default value: ``"http"``.
   * - ``opscode_chef['upload_vip']``
     - Default value: ``"127.0.0.1"``.
   * - ``opscode_chef['url']``
     - Default value: ``"http://127.0.0.1:9460"``.
   * - ``opscode_chef['validation_client_name']``
     - Default value: ``"chef"``.
   * - ``opscode_chef['vip']``
     - Default value: ``"127.0.0.1"``.
   * - ``opscode_chef['web_ui_admin_default_password']``
     - Default value: ``"p@ssw0rd1"``.
   * - ``opscode_chef['web_ui_admin_user_name']``
     - Default value: ``"admin"``.
   * - ``opscode_chef['web_ui_client_name']``
     - Default value: ``"chef-webui"``.
   * - ``opscode_chef['worker_processes']``
     - Default value: ``4``.
   * - ``opscode_chef['worker_timeout']``
     - Default value: ``3600``.
