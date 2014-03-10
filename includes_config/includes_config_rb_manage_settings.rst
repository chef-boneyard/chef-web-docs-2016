.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_manage['events']['port']``
     - The port on which the events service runs. This value is defined in the ``/libraries/config.rb`` file. Default value: ``11001``.
   * - ``opscode_manage['external']['port']``
     - The alias for the port on which the external load balancer will listen. See ``opscode_manage['public_port']``. Default value: ``node['opscode-manage']['public_port']``.
   * - ``opscode_manage['logging']['chef_log_level']``
     - The log level used for requests to the |chef server| from the web application. This value is defined in the ``/libraries/config.rb`` file. Default value: ``info``.
   * - ``opscode_manage['logging']['log_level']``
     - The log level for Ruby on Rails services. This value is defined in the ``/libraries/config.rb`` file. Default value: ``info``.
   * - ``opscode_manage['nginx_addon_prefix']``
     - The prefix used by the Manage add-on. Default value: ``30``.
   * - ``opscode_manage['platform']['user']``
     - The name of the privileged user that manages requests to the |chef server|. Default value: ``'pivotal'``.
   * - ``opscode_manage['platform']['key_file']``
     - The key file used by the privileged user. Default value: ``'/etc/opscode/webui_priv.pem'``.
   * - ``opscode_manage['public_port']``
     - The port on which the external load balancer will listen. Default value: ``443``.
   * - ``opscode_manage['redis']['host']``
     - The host on which redis runs. This value is defined in the ``/libraries/config.rb`` file. Default value: ``localhost``.
   * - ``opscode_manage['redis']['port']``
     - The port on which redis listens. This value is defined in the ``/libraries/config.rb`` file. Default value: ``11002``.
   * - ``opscode_manage['redis']['url']``
     - The URL used by redis. This value is defined in the ``/libraries/config.rb`` file. Default value: ``{ "redis://#{host}:#{port}/0" }``.
   * - ``opscode_manage['runit_timeout']``
     - The amount of time (in seconds) to wait before timing out. Default value: ``30``.
   * - ``opscode_manage['secret_token']``
     - The secret token used by Ruby on Rails to prevent session tampering. Default value:  (a token).
   * - ``opscode_manage['services']['opscode_manage_events']['enable']``
     - Use to enable the ``opscode-manage-events`` service. Default value: ``true``.
   * - ``opscode_manage['services']['opscode_manage_webapp']['enable']``
     - Use to enable the ``opscode-manage-webapp`` service. Default value: ``true``.
   * - ``opscode_manage['services']['opscode_manage_worker']['enable']``
     - Use to enable the ``opscode-manage-worker`` service. Default value: ``true``.
   * - ``opscode_manage['support_email']``
     - The email address used to send feedback. Default value: ``support@getchef.com``.
   * - ``opscode_manage['webapp']['backlog']``
     - The size of the backlog. Default value: ``1024``.
   * - ``opscode_manage['webapp']['listen']``
     - The port on which |chef manage| services listen. This value is defined in the ``/libraries/config.rb`` file. Default value: ``{ "127.0.0.1:#{port}" }``.
   * - ``opscode_manage['webapp']['port']``
     - The port on which |chef manage| services run. This value is defined in the ``/libraries/config.rb`` file. Default value: ``9462``.
   * - ``opscode_manage['webapp']['tcp_nodelay']``
     - |use nagle| Default value: ``true``.
   * - ``opscode_manage['webapp']['worker_processes']``
     - |worker_processes| Default value: ``node['cpu']['total'].to_i``.
   * - ``opscode_manage['webapp']['worker_timeout']``
     - |timeout worker| Default value: ``3600``.
