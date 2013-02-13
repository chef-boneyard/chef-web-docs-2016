.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['cache_max_size']``
     - Default value: ``5000m``.
   * - ``nginx['client_max_body_size']``
     - Default value: ``250m``.
   * - ``nginx['dir']``
     - Default value: ``/var/opt/chef-server/nginx``.
   * - ``nginx['enable']``
     - Default value: ``true``.
   * - ``nginx['enable_non_ssl']``
     - Default value: ``false``.
   * - ``nginx['gzip']``
     - Default value: ``on``.
   * - ``nginx['gzip_comp_level']``
     - Default value: ``2``.
   * - ``nginx['gzip_http_version']``
     - Default value: ``1.0``.
   * - ``nginx['gzip_proxied']``
     - Default value: ``any``.
   * - ``nginx['gzip_types']``
     - Default value: ``[ "text/plain", "text/css", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript", "application/json" ]``.
   * - ``nginx['ha']``
     - Default value: ``false``.
   * - ``nginx['keepalive_timeout']``
     - Default value: ``65``.
   * - ``nginx['log_directory']``
     - Default value: ``/var/log/chef-server/nginx``.
   * - ``nginx['non_ssl_port']``
     - Default value: ``80``.
   * - ``nginx['sendfile']``
     - Default value: ``on``.
   * - ``nginx['server_name']``
     - Default value: ``node['fqdn']``.
   * - ``nginx['ssl_certificate']``
     - Default value: ``nil``.
   * - ``nginx['ssl_certificate_key']``
     - Default value: ``nil``.
   * - ``nginx['ssl_ciphers']``
     - Default value: varies.
   * - ``nginx['ssl_company_name']``
     - Default value: ``YouCorp``.
   * - ``nginx['ssl_country_name']``
     - Default value: ``US``.
   * - ``nginx['ssl_email_address']``
     - Default value: ``you@example.com``.
   * - ``nginx['ssl_locality_name']``
     - Default value: ``Seattle``.
   * - ``nginx['ssl_organizational_unit_name']``
     - Default value: ``Operations``.
   * - ``nginx['ssl_port']``
     - Default value: ``443``.
   * - ``nginx['ssl_protocols']``
     - Default value: varies.
   * - ``nginx['ssl_state_name']``
     - Default value: ``WA``.
   * - ``nginx['tcp_nodelay']``
     - Default value: ``on``.
   * - ``nginx['tcp_nopush']``
     - Default value: ``on``.
   * - ``nginx['url']``
     - Default value: ``https://#{node['fqdn']}``.
   * - ``nginx['worker_connections']``
     - Default value: ``10240``.
   * - ``nginx['worker_processes']``
     - Default value: ``node['cpu']['total'].to_i``.
