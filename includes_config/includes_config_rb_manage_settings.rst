.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_documentation_url``
     - The URL at which documentation for |chef| is located. Default value: ``http://docs.opscode.com``.
   * - ``disable_sign_up``
     - Use to disable sign-up and only allow sign-in. Default value: ``false``.
   * - ``events.port``
     - The port on which the events services run. Default value: ``11001``.
   * - ``logging.chef_log_level``
     - The log level used for requests to the |chef server| from the web application. Default value: ``info``.
   * - ``logging.log_level``
     - The log level for |ruby on rails| services. Default value: ``info``.
   * - ``nginx_addon_prefix``
     - The prefix used by the |chef manage| add-on. Default value: ``30``.
   * - ``platform.user``
     - The name of the privileged user that manages requests to the |chef server|. Default value: ``'pivotal'``.
   * - ``platform.key_file``
     - The key file used by the privileged user. Default value: ``'/etc/opscode/webui_priv.pem'``.
   * - ``public_port``
     - The port on which the external load balancer will listen. Default value: ``443``.
   * - ``redis.host``
     - The host on which |redis| runs. Default value: ``localhost``.
   * - ``redis.port``
     - The port on which |redis| listens. Default value: ``11002``.
   * - ``redis.url``
     - The URL used by |redis|. Default value: ``redis://#{redis.host}:#{redis.port}/0``.
   * - ``runit_timeout``
     - The amount of time (in seconds) to wait before timing out. Default value: ``30``.
   * - ``secret_token``
     - The secret token used by |ruby on rails| to prevent session tampering. See: http://guides.rubyonrails.org/security.html#session-storagel. Default value: (a token).
   * - ``services['opscode_manage_events'].enable``
     - Use to enable the ``opscode-manage-events`` service. Default value: ``true``.
   * - ``services['opscode_manage_webapp'].enable``
     - Use to enable the ``opscode-manage-webapp`` service. Default value: ``true``.
   * - ``services['opscode_manage_worker'].enable``
     - Use to enable the ``opscode-manage-worker`` service. Default value: ``true``.
   * - ``support_email_address``
     - The email address used to send feedback. Default value: ``support@getchef.com``.
   * - ``support_site_url``
     - The URL at which links to |company_name| support are located. Default value: ``http://getchef.com/support``.
   * - ``support_tickets_url``
     - The URL at which |company_name| support tickets are created. Default value: ``https://getchef.com/support/tickets``.
   * - ``webapp.backlog``
     - The size of the backlog. Default value: ``1024``.
   * - ``webapp.listen``
     - The port on which |chef manage| services listen. Default value: ``{ "127.0.0.1:#{port}" }``.
   * - ``webapp.port``
     - The port on which |chef manage| services run. Default value: ``9462``.
   * - ``webapp.tcp_nodelay``
     - |use nagle| Default value: ``true``.
   * - ``webapp.worker_processes``
     - |worker_processes| Default value: ``node['cpu.total'].to_i``.
   * - ``webapp.worker_timeout``
     - |timeout worker| Default value: ``3600``.




