.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb['api_fqdn']``
     - Default value: ``node['fqdn']``.
   * - ``lb['ban_refresh_interval']``
     - Default value: ``600``.
   * - ``lb['bookshelf']``
     - Default value: ``127.0.0.1``.
   * - ``lb['cache_cookbook_files']``
     - Default value: ``false``.
   * - ``lb['chef_max_version']``
     - Default value: ``11``.

       .. warning:: This setting is deprecated starting with |chef server oec| 11.2.5 to ensure that the |chef client| version 12 may communicate with the |chef server|. For older versions of |chef server oec|, add this setting to the |private chef rb| file and set the value to ``12``.

   * - ``lb['chef_min_version']``
     - Default value: ``10``.
   * - ``lb['chef_server_webui']``
     - Default value: ``127.0.0.1``.
   * - ``lb['debug']``
     - Default value: ``false``.
   * - ``lb['enable']``
     - Default value: ``true``.
   * - ``lb['erchef']``
     - Default value: ``127.0.0.1``.
   * - ``lb['maint_refresh_interval']``
     - Default value: ``600``.
   * - ``lb['redis_connection_pool_size']``
     - Default value: ``250``.
   * - ``lb['redis_connection_timeout']``
     - Default value: ``1000``.
   * - ``lb['redis_keepalive_timeout']``
     - Default value: ``2000``.
   * - ``lb['upstream']``
     - Default value:

       .. code-block:: ruby

          {
            'oc_bifrost'=>['127.0.0.1'],
            'opscode-account'=>['127.0.0.1'],
            'opscode-authz'=>['127.0.0.1'],
            'opscode-bookshelf'=>['127.0.0.1'],
            'opscode-erchef'=>['127.0.0.1'],
            'opscode-solr4'=>['127.0.0.1']
          }
   * - ``lb['vip']``
     - |ip_address virtual| Default value: ``127.0.0.1``.
   * - ``lb['web_ui_fqdn']``
     - Default value: ``node['fqdn']``.
   * - ``lb['xdl_defaults']['503_mode']``
     - Default value: ``false``.
   * - ``lb['xdl_defaults']['couchdb_acls']``
     - Default value: ``true``.
   * - ``lb['xdl_defaults']['couchdb_containers']``
     - Default value: ``true``.
   * - ``lb['xdl_defaults']['couchdb_groups']``
     - Default value: ``true``.

And for the internal load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb_internal['account_port']``
     - Default value: ``9685``.
   * - ``lb_internal['chef_port']``
     - Default value: ``9680``.
   * - ``lb_internal['enable']``
     - Default value: ``true``.
   * - ``lb_internal['oc_bifrost_port']``
     - Default value: ``9683``.
   * - ``lb_internal['vip']``
     - |ip_address virtual| Default value: ``'127.0.0.1'``.
