.. This is an included how-to. 


After an upgrade to |chef server| 12 from |chef server osc|, you may continue using the same |ssl| certificates by setting these values to specify the paths to the existing certificate and key. For example:

.. code-block:: ruby

   nginx['ssl_certificate']  = "/path/to/existing/your-host.crt"
   nginx['ssl_certificate_key']  = "/path/to/existing/your-host.key"

Save the file, and then run the following command:

.. code-block:: bash

   $ sudo chef-server-ctl reconfigure
