.. This is an included how-to. 


The |chef server| can be configured to use |ssl| certificates by adding the following settings to the server configuration file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['ssl_certificate']``
     - |ssl_certificate|
   * - ``nginx['ssl_certificate_key']``
     - |ssl_certificate key|

and then setting their values to define the paths to the certificate and key.