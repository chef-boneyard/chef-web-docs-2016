.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for opscode-chef:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_chef['backlog']``
     - Default value: ``1024``. For example:
       ::

          opscode_chef['backlog'] = 1024

   * - ``opscode_chef['checksum_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/checksum"``. For example:
       ::

          opscode_chef['checksum_path'] = "/var/opt/opscode/opscode-chef/checksum"

   * - ``opscode_chef['dir']``
     - Default value: ``"/var/opt/opscode/opscode-chef"``. For example:
       ::

          opscode_chef['dir'] = "/var/opt/opscode/opscode-chef"

   * - ``opscode_chef['enable']``
     - Default value: ``true``. For example:
       ::

          opscode_chef['enable'] = true

   * - ``opscode_chef['environment']``
     - Default value: ``"privatechef"``. For example:
       ::

          opscode_chef['environment'] = "privatechef"

   * - ``opscode_chef['ha']``
     - Default value: ``false``. For example:
       ::

          opscode_chef['ha'] = false

   * - ``opscode_chef['listen']``
     - Default value: ``"127.0.0.1:9460"``. For example:
       ::

          opscode_chef['listen'] = "127.0.0.1:9460"

   * - ``opscode_chef['log_directory']``
     - Default value: ``"/var/log/opscode/opscode-chef"``. For example:
       ::

          opscode_chef['log_directory'] = "/var/log/opscode/opscode-chef"

   * - ``opscode_chef['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          opscode_chef['svlogd_size'] = 1000000

   * - ``opscode_chef['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          opscode_chef['svlogd_num'] = 10

   * - ``opscode_chef['port']``
     - Default value: ``9460``. For example:
       ::

          opscode_chef['port'] = 9460

   * - ``opscode_chef['proxy_user']``
     - Default value: ``"pivotal"``. For example:
       ::

          opscode_chef['proxy_user'] = "pivotal"

   * - ``opscode_chef['sandbox_path']``
     - Default value: ``"/var/opt/opscode/opscode-chef/sandbox"``. For example:
       ::

          opscode_chef['sandbox_path'] = "/var/opt/opscode/opscode-chef/sandbox"

   * - ``opscode_chef['tcp_nodelay']``
     - Default value: ``true``. For example:
       ::

          opscode_chef['tcp_nodelay'] = true

   * - ``opscode_chef['umask']``
     - Default value: ``"0022"``. For example:
       ::

          opscode_chef['umask'] = "0022"

   * - ``opscode_chef['upload_internal_port']``
     - Default value: ``9460``. For example:
       ::

          opscode_chef['upload_internal_port'] = 9460

   * - ``opscode_chef['upload_internal_proto']``
     - Default value: ``"http"``. For example:
       ::

          opscode_chef['upload_internal_proto'] = "http"

   * - ``opscode_chef['upload_internal_vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['upload_internal_vip'] = "127.0.0.1"

   * - ``opscode_chef['upload_port']``
     - Default value: ``9460``. For example:
       ::

          opscode_chef['upload_port'] = 9460

   * - ``opscode_chef['upload_proto']``
     - Default value: ``"http"``. For example:
       ::

          opscode_chef['upload_proto'] = "http"

   * - ``opscode_chef['upload_vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['upload_vip'] = "127.0.0.1"

   * - ``opscode_chef['url']``
     - Default value: ``"http://127.0.0.1:9460"``. For example:
       ::

          opscode_chef['url'] = "http://127.0.0.1:9460"

   * - ``opscode_chef['validation_client_name']``
     - Default value: ``"chef"``. For example:
       ::

          opscode_chef['validation_client_name'] = "chef"

   * - ``opscode_chef['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          opscode_chef['vip'] = "127.0.0.1"

   * - ``opscode_chef['web_ui_admin_default_password']``
     - Default value: ``"p@ssw0rd1"``. For example:
       ::

          opscode_chef['web_ui_admin_default_password'] = "p@ssw0rd1"

   * - ``opscode_chef['web_ui_admin_user_name']``
     - Default value: ``"admin"``. For example:
       ::

          opscode_chef['web_ui_admin_user_name'] = "admin"

   * - ``opscode_chef['web_ui_client_name']``
     - Default value: ``"chef-webui"``. For example:
       ::

          opscode_chef['web_ui_client_name'] = "chef-webui"

   * - ``opscode_chef['worker_processes']``
     - Default value: ``4``. For example:
       ::

          opscode_chef['worker_processes'] = 4

   * - ``opscode_chef['worker_timeout']``
     - Default value: ``3600``. For example:
       ::

          opscode_chef['worker_timeout'] = 3600

