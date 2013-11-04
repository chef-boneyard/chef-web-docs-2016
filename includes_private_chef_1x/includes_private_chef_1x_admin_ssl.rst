.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuration of |chef private| SSL using certificate authority-verified certificates is done by placing the 
certificate and private key file obtained from your certifying authority in the correct files after the
initial configuration of |chef private|.

Initial configuration of |chef private| is done automatically using an |opscode| self-signed certificate to create the
certificate and private key files for |nginx|.

The locations of the certificate and private key files are 

* ``/var/opt/opscode/nginx/ca/FQDN.cert``
* ``/var/opt/opscode/nginx/ca/FQDN.pem``

As the |fqdn| will have already been configured previously, we can just replace the contents of the two files above 
with your certifying authority's files.

.. warning:: The |fqdn| for the |chef private| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef private| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef private| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

