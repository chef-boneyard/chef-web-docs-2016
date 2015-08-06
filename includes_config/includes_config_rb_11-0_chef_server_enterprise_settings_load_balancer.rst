.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb['api_fqdn']``
     - Default value: ``ubuntu.localdomain``.
   * - ``lb['bookshelf']``
     - Default value: ``127.0.0.1``.
   * - ``lb['cache_cookbook_files']``
     - Default value: ``false``.
   * - ``lb['chef_server_webui']``
     - Default value: ``127.0.0.1``.
   * - ``lb['debug']``
     - Default value: ``false``.
   * - ``lb['enable']``
     - Default value: ``true``.
   * - ``lb['erchef']``
     - Default value: ``127.0.0.1``.
   * - ``lb['upstream']``
     - Default value:

       .. code-block:: ruby

          {
           'opscode-chef'=>['127.0.0.1'],
           'opscode-erchef'=>['127.0.0.1'],
           'opscode-account'=>['127.0.0.1'],
           'opscode-webui'=>['127.0.0.1'],
           'opscode-authz'=>['127.0.0.1'],
           'opscode-solr'=>['127.0.0.1']
          }
   * - ``lb['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
   * - ``lb['web_ui_fqdn']``
     - Default value: ``'ubuntu.localdomain'``.

And for the internal load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb_internal['account_port']``
     - Default value: ``9685``.
   * - ``lb_internal['authz_port']``
     - Default value: ``9683``.
   * - ``lb_internal['chef_port']``
     - Default value: ``9680``.
   * - ``lb_internal['enable']``
     - Default value: ``true``.
   * - ``lb_internal['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
