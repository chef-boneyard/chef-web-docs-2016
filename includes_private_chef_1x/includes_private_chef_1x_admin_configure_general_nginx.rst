.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the |service nginx| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['cache_max_size']``
     - Default value: ``"5000m"``. For example:
       ::

          nginx['cache_max_size'] = "5000m"

   * - ``nginx['client_max_body_size']``
     - Default value: ``"250m"``. For example:
       ::

          nginx['client_max_body_size'] = "250m"

   * - ``nginx['dir']``
     - Default value: ``"/var/opt/opscode/nginx"``. For example:
       ::

          nginx['dir'] = "/var/opt/opscode/nginx"

   * - ``nginx['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          nginx['enable'] = true

   * - ``nginx['gzip']``
     - Default value: ``"on"``. For example:
       ::

          nginx['gzip'] = "on"

   * - ``nginx['gzip_comp_level']``
     - Default value: ``"2"``. For example:
       ::

          nginx['gzip_comp_level'] = "2"

   * - ``nginx['gzip_http_version']``
     - Default value: ``"1.0"``. For example:
       ::

          nginx['gzip_http_version'] = "1.0"

   * - ``nginx['gzip_proxied']``
     - Default value: ``"any"``. For example:
       ::

          nginx['gzip_proxied'] = "any"

   * - ``nginx['gzip_types']``
     - Default Value:
       ::

          ["text/plain",
           "text/css",
           "application/x-javascript",
           "text/xml",
           "application/xml",
           "application/xml+rss",
           "text/javascript"]``. 

       For example:
       ::

          nginx['gzip_types'] = ["text/plain",
                                 "text/css",
                                 "application/x-javascript",
                                 "text/xml",
                                 "application/xml",
                                 "application/xml+rss",
                                 "text/javascript"]

   * - ``nginx['ha']``
     - |use ha| Default value: ``false``. For example:
       ::

          nginx['ha'] = false

   * - ``nginx['keepalive_timeout']``
     - Default value: ``65``. For example:
       ::

          nginx['keepalive_timeout'] = 65

   * - ``nginx['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/nginx"``. For example:
       ::

          nginx['log_directory'] = "/var/log/opscode/nginx"

   * - ``nginx['sendfile']``
     - Default value: ``"on"``. For example:
       ::

          nginx['sendfile'] = "on"

   * - ``nginx['server_name']``
     - Default value: ``"ubuntu.localdomain"``. For example:
       ::

          nginx['server_name'] = "ubuntu.localdomain"

   * - ``nginx['ssl_certificate']``
     - |ssl_certificate| Default value: ``nil``. For example:
       ::

          nginx['ssl_certificate'] = nil


   * - ``nginx['ssl_certificate_key']``
     - |ssl_certificate key| Default value: ``nil``. For example:
       ::

          nginx['ssl_certificate_key'] = nil

   * - ``nginx['ssl_ciphers']``
     - Default value: ``"RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"``. For example:
       ::

          nginx['ssl_ciphers'] = "RC4-SHA:RC4-MD5:RC4:RSA:HIGH:MEDIUM:!LOW:!
            kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"

   * - ``nginx['ssl_company_name']``
     - Default value: ``"YouCorp"``. For example:
       ::

          nginx['ssl_company_name'] = "YouCorp"

   * - ``nginx['ssl_country_name']``
     - Default value: ``"US"``. For example:
       ::

          nginx['ssl_country_name'] = "US"

   * - ``nginx['ssl_email_address']``
     - Default value: ``"you@example.com"``. For example:
       ::

          nginx['ssl_email_address'] = "you@example.com"

   * - ``nginx['ssl_locality_name']``
     - Default value: ``"Seattle"``. For example:
       ::

          nginx['ssl_locality_name'] = "Seattle"

   * - ``nginx['ssl_organizational_unit_name']``
     - Default value: ``"Operations"``. For example:
       ::

          nginx['ssl_organizational_unit_name'] = "Operations"

   * - ``nginx['enable_non_ssl']``
     - Set this value to true in order to disable the port 80 redirect to 443 and allow for a front end hardware load balancer to do SSL termination of the WebUI and API front end. Default value: ``false``. For example:
       ::

          nginx['enable_non_ssl'] = true

   * - ``nginx['non_ssl_port']``
     - This value can be used to change the port that the WebUI and API bind to for non_ssl connections.  Setting this value to nil will disable this port entirely.  To just enable or disable the redirect to SSL on this port see the nginx['enable_non_ssl'] parameter. Default value: ``80``. For example:
       ::

          nginx['non_ssl_port'] = 80

   * - ``nginx['ssl_port']``
     - Default value: ``443``. For example:
       ::

          nginx['ssl_port'] = 443

   * - ``nginx['ssl_protocols']``
     - Default value: ``"SSLv3 TLSv1"``. For example:
       ::

          nginx['ssl_protocols'] = "SSLv3 TLSv1"

   * - ``nginx['ssl_state_name']``
     - Default value: ``"WA"``. For example:
       ::

          nginx['ssl_state_name'] = "WA"

   * - ``nginx['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          nginx['svlogd_size'] = 1000000

   * - ``nginx['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          nginx['svlogd_num'] = 10

   * - ``nginx['tcp_nodelay']``
     - |use nagle| Default value: ``"on"``. For example:
       ::

          nginx['tcp_nodelay'] = "on"

   * - ``nginx['tcp_nopush']``
     - |use tcpip| Default value: ``"on"``. For example:
       ::

          nginx['tcp_nopush'] = "on"

   * - ``nginx['url']``
     - Default value: ``"https://ubuntu.localdomain"``. For example:
       ::

          nginx['url'] = "https://ubuntu.localdomain"

   * - ``nginx['worker_connections']``
     - |worker_connections| Use with ``nginx['worker_processes']`` to determine the maximum number of allowed clients. Default value: ``10240``. For example:
       ::

          nginx['worker_connections'] = 10240

   * - ``nginx['worker_processes']``
     - |worker_processes| Use with ``nginx['worker_connections']`` to determine the maximum number of allowed clients. Default value: ``4``. For example:
       ::

          nginx['worker_processes'] = 4

   * - ``nginx['x_forwarded_proto']``
     - |x_forwarded_proto| This is the protocol used to connect to |chef private| by a |chef client| or a workstation. Default value: ``"https"``. For example:
       ::

          nginx['x_forwarded_protocol'] = "http"

