.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``oc_chef_authz``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``oc_chef_authz['http_cull_interval']``
     - Default value: ``"{1, min}"``.
   * - ``oc_chef_authz['http_init_count']``
     - Default value: ``25``.
   * - ``oc_chef_authz['http_max_age']``
     - Default value: ``"{70, sec}"``.
   * - ``oc_chef_authz['http_max_connection_duration']``
     - Default value: ``"{70, sec}"``.
   * - ``oc_chef_authz['http_max_count']``
     - Default value: ``100``.
   * - ``oc_chef_authz['ibrowse_options']``
     - The amount of time (in milliseconds) to wait for a connection to be established. Default value: ``"[{connect_timeout, 5000}]"``.