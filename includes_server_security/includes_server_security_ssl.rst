.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuration of |ssl| for the |chef server| using certificate authority-verified certificates is done by placing the certificate and private key file obtained from the certifying authority in the correct files after the initial configuration of |chef server|.

Initial configuration of the |chef server| is done automatically using a self-signed certificate to create the certificate and private key files for |nginx|.

The locations of the certificate and private key files are 

* ``/var/opt/opscode/nginx/ca/FQDN.crt``
* ``/var/opt/opscode/nginx/ca/FQDN.key``

As the |fqdn| will have already been configured previously, simply replace the contents of these two files with the certifying authority's files, reconfigure the chef server and restart the nginx service to make sure it has loaded the new key and cert.

   .. code-block:: bash

      $ chef-server-ctl reconfigure
      $ chef-server-ctl restart nginx

