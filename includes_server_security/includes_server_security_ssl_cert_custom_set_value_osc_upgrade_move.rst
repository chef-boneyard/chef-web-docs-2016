.. This is an included how-to. 


To copy the certificates, move the certificate files located in ``/var/opt/chef-server/nginx/ca`` to ``/var/opt/opscode/nginx/ca``, and then restart the |service nginx| service:

   .. code-block:: bash

      $ chef-server-ctl restart nginx
