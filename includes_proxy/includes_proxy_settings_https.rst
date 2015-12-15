.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following settings in the |client rb| or |knife rb| files for environments that use an HTTPS proxy:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``https_proxy``
     - The proxy server for HTTPS connections. Default value: ``nil``.
   * - ``https_proxy_pass``
     - The password for the proxy server when the proxy server is using an HTTPS connection. Default value: ``nil``.
   * - ``https_proxy_user``
     - The user name for the proxy server when the proxy server is using an HTTPS connection. Default value: ``nil``.
