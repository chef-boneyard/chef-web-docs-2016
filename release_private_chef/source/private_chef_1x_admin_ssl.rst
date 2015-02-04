=====================================================
SSL Configuration
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

Configuration of |chef private| SSL using certificate authority-verified certificates is done by placing the certificate and private key file obtained from your certifying authority in the correct files after the initial configuration of |chef private|.

Initial configuration of |chef private| is done automatically using a |company_name| self-signed certificate to create the certificate and private key files for |nginx|.

The locations of the certificate and private key files are 

* ``/var/opt/opscode/nginx/ca/FQDN.cert``
* ``/var/opt/opscode/nginx/ca/FQDN.pem``

As the |fqdn| will have already been configured previously, just replace the contents of the two files above 
with your certifying authority's files.

.. warning:: The |fqdn| for the |chef private| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef private| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef private| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Add Custom SSL Certificates
-----------------------------------------------------
|chef server oec| can be configured to use |ssl| certificates by adding the following settings in the |private chef rb| file:

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

