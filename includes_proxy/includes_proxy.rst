.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

HTTP and HTTPS proxies are supported with the ``http_proxy`` and ``https_proxy`` environment variables. 

Proxies
-------

If you are in an environment which requires proxies to reach the Internet, many
Chef commands will not work until they are configured. To configure Chef, set
the `http_proxy` and `https_proxy` environment variables (lowercase!).

Setting It Up: Windows
----------------------

To find out what your proxy server is on Windows (and whether you have one), go
to Internet Properties > Connections > LAN settings and look at the Proxy server
setting. If it is not set or blank, you probably don't have a proxy server.

Go to System Properties > Environment Variables > System variables, and set
http_proxy and https_proxy (lowercase!) to the location of your proxy server.

Setting It Up: Linux
--------------------

To find our what your current proxy server is on OS/X and Linux, you should check
your environment variables: `env | grep -i http_proxy`. If you see an environment
variable set, *make sure it is lowercase*. If not, add a lowercase version of
your proxy variables to your shell (e.g. ~/.bashrc) with the lines:

```
export http_proxy=http://myproxy.com:3168
export https_proxy=http://myproxy.com:3168
```


.. the following table is put here to capture the six proxy settings in the configuration files for chef/knife
.. it's hooked into as part of our topics that describe the configuration settings like: https://docs.chef.io/config_rb_client.html
.. the descriptions actually have a swaps_descriptions already set up, but they are undone here for maximum readability; we'll move back to the swaps_descriptions later:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``http_proxy``
     - The proxy server for HTTP connections. Default value: ``nil``.
   * - ``http_proxy_pass``
     - The password for the proxy server when the proxy server is using an HTTP connection. Default value: ``nil``.
   * - ``http_proxy_user``
     - The user name for the proxy server when the proxy server is using an HTTP connection. Default value: ``nil``.
   * - ``https_proxy``
     - The proxy server for HTTPS connections. Default value: ``nil``.
   * - ``https_proxy_pass``
     - The password for the proxy server when the proxy server is using an HTTPS connection. Default value: ``nil``.
   * - ``https_proxy_user``
     - The user name for the proxy server when the proxy server is using an HTTPS connection. Default value: ``nil``.

Also, FTP settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ftp_proxy``
     - The proxy server for FTP connections.
   * - ``ftp_proxy_pass``
     - The password for the proxy server when the proxy server is using an FTP connection. Default value: ``nil``.
   * - ``ftp_proxy_user``
     - The user name for the proxy server when the proxy server is using an FTP connection. Default value: ``nil``.

.. the following information exists at this path in the docs already: /includes_config/includes_config_rb_client_automatic_proxy.rst
.. we should consider refactoring it from that directory into includes_proxy

If ``http_proxy``, ``https_proxy``, ``ftp_proxy``, or ``no_proxy`` is set in the |client rb| file, the |chef client| will configure the ``ENV`` variable based on these (and related) settings. For example:

.. code-block:: ruby

   http_proxy 'http://proxy.example.org:8080'
   http_proxy_user 'myself'
   http_proxy_pass 'Password1'

will be set to:

.. code-block:: ruby

   ENV['http_proxy'] = 'http://myself:Password1@proxy.example.org:8080'
