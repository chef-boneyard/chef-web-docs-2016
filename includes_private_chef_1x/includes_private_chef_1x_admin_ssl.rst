.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuration of |chef private| SSL using certificate authority-verified certificates is done by placing the 
certificate and private key file obtained from your certifying authority in the correct files after the
initial configuration of |chef private|.

Initial configuration of |chef private| is done automatically using Opscode's self-signed certificate to create the
certificate and private key files for nginx.

The locations of the certificate and private key files are 

* ``/var/opt/opscode/nginx/ca/FQDN.cert``
* ``/var/opt/opscode/nginx/ca/FQDN.pem``

As the FQDN will have already been configured previously, we can just replace the contents of the two files above 
with your certifying authority's files.

