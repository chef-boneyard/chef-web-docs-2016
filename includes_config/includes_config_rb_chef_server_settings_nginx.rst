.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``cache_max_size``
     - Default value: ``5000m``.
   * - ``client_max_body_size``
     - Default value: ``250m``.
   * - ``dir``
     - Default value: ``/var/opt/chef-server/nginx``.
   * - ``enable``
     - Default value: ``true``.
   * - ``enable_non_ssl``
     - Default value: ``false``.
   * - ``gzip``
     - Default value: ``on``.
   * - ``gzip_comp_level``
     - Default value: ``2``.
   * - ``gzip_http_version``
     - Default value: ``1.0``.
   * - ``gzip_proxied``
     - Default value: ``any``.
   * - ``gzip_types``
     - Default value: ``[ "text/plain", "text/css", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript", "application/json" ]``.
   * - ``ha``
     - Default value: ``false``.
   * - ``keepalive_timeout``
     - Default value: ``65``.
   * - ``log_directory``
     - Default value: ``/var/log/chef-server/nginx``.
   * - ``non_ssl_port``
     - Default value: ``80``.
   * - ``sendfile``
     - Default value: ``on``.
   * - ``server_name``
     - Default value: ``node['fqdn']``.
   * - ``ssl_certificate``
     - Default value: ``nil``.
   * - ``ssl_certificate_key``
     - Default value: ``nil``.
   * - ``ssl_ciphers``
     - Default value: varies.
   * - ``ssl_company_name``
     - Default value: ``YouCorp``.
   * - ``ssl_country_name``
     - Default value: ``US``.
   * - ``ssl_email_address``
     - Default value: ``you@example.com``.
   * - ``ssl_locality_name``
     - Default value: ``Seattle``.
   * - ``ssl_organizational_unit_name``
     - Default value: ``Operations``.
   * - ``ssl_port``
     - Default value: ``443``.
   * - ``ssl_protocols``
     - Default value: varies.
   * - ``ssl_state_name``
     - Default value: ``WA``.
   * - ``tcp_nodelay``
     - Default value: ``on``.
   * - ``tcp_nopush``
     - Default value: ``on``.
   * - ``url``
     - Default value: ``https://#{node['fqdn']}``.
   * - ``worker_connections``
     - Default value: ``10240``.
   * - ``worker_processes``
     - Default value: ``node['cpu']['total'].to_i``.
