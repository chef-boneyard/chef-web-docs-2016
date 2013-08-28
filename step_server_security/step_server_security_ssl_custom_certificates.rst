.. This is an included how-to. 


|chef server oec| can be configured to use |ssl| certificates by adding the following settings in the |private chef rb| file:

.. code-block:: ruby

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nginx['ssl_certificate']``
     - |ssl_certificate|
   * - ``nginx['ssl_certificate_key']``
     - |ssl_certificate key|

and setting their values to define the path to the certificate and the path to the certificate key, similar to the following:

.. code-block:: ruby

   nginx['ssl_certificate']  = "/etc/pki/tls/certs/your-host.crt"
   nginx['ssl_certificate_key']  = "/etc/pki/tls/private/your-host.key"

Save the file, and then run the following command:

.. code-block:: bash

   $ sudo private-chef-ctl reconfigure
