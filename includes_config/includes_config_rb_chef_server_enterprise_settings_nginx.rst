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
     - Indicates whether port 80 redirects to port 443 are allowed. When this value is set to ``false``, load balancers on the front-end hardware are allowed to do |ssl| termination of the WebUI and API. Default value: ``false``.
   * - ``nginx['gzip']``
     - Indicates that |gzip| compression is enabled. Default value: ``on``.
   * - ``nginx['gzip_comp_level']``
     - The compression level used with |gzip|, from least amount of compression (``1``, fastest) to the most (``2``, slowest). Default value: ``2``.
   * - ``nginx['gzip_http_version']``
     - Enables |gzip| depending on the version of the HTTP request. Default value: ``1.0``.
   * - ``nginx['gzip_proxied']``
     - The type of compression used based on the request and response. Default value: ``any``.
   * - ``nginx['gzip_types']``
     - Enables compression for the specified MIME-types. Default value: ``[ "text/plain", "text/css", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript", "application/json" ]``.
   * - ``nginx['ha']``
     - Indicates that the |chef server| is installed as part of a |ha| topology. Default value: ``false``.
   * - ``nginx['keepalive_timeout']``
     - The amount of time (in seconds) that a connection will be allowed to stay open. Default value: ``65``.
   * - ``nginx['log_directory']``
     - The directory in which log files are located. Default value: ``/var/log/chef-server/nginx``.
   * - ``nginx['non_ssl_port']``
     - The port on which the WebUI and API are bound for non-|ssl| connections. If this value is ``nil``, this port is disabled. Use ``nginx['enable_non_ssl'] to enable or disable |ssl| redirects on this port number. Default value: ``80``.
   * - ``nginx['sendfile']``
     - Indicates whether ``sendfile()`` is used to copy data between file descriptors. Default value: ``on``.
   * - ``nginx['server_name']``
     - The |fqdn| of the server. Default value: ``node['fqdn']``.
   * - ``nginx['ssl_certificate']``
     - The file that contains the |ssl| certificate. Default value: ``nil``.
   * - ``nginx['ssl_certificate_key']``
     - The file that contains the private key used by ``nginx['ssl_certificate']``. Default value: ``nil``.
   * - ``nginx['ssl_ciphers']``
     - The list of supported cipher suites that are used to establish a secure connection. Default value: varies.
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
     - The protocol versions that are enabled. Default value: varies, depending on the configuration of the |chef server| topology.
   * - ``nginx['ssl_state_name']``
     - Default value: ``WA``.
   * - ``nginx['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``.
   * - ``nginx['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``.
   * - ``nginx['tcp_nodelay']``
     - Indicates whether the |nagle| buffering algorithm is enabled. Default value: ``on``.
   * - ``nginx['tcp_nopush']``
     - Indicates whether TCP/IP transactions are enabled. Default value: ``on``.
   * - ``nginx['url']``
     - Default value: ``https://#{node['fqdn']}``.
   * - ``nginx['worker_connections']``
     - The number of allowed worker connections. Used with ``nginx['worker_processes']`` to determine the maximum number of allowed clients. Default value: ``10240``.
   * - ``nginx['worker_processes']``
     - The number of allowed worker processes. Used with ``nginx['worker_connections']`` to determine the maximum number of allowed clients. Default value: ``node['cpu']['total'].to_i``.
   * - ``nginx['x_forwarded_proto']``
     - This value can be used to set the protocol (HTTP or HTTPS) of URLs returned within API responses. It should be set to the protocol used to connect to the Private Chef API by your clients. Default value: ``"https"``.
