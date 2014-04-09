.. This is an included how-to. 


|ssl| certificates should be regenerated periodically. This is an important part of protecting the |chef server oec| from vulnerabilities and helping to prevent the information stored on the |chef server| from being compromised.

To regenerate |ssl| certificates:

#. Run the following command:

   .. code-block:: bash
   
      $ private-chef-ctl stop

   and then do one of the following:

#. If the |chef server oec| uses |chef server oec|-generated |ssl| certificates, |chef server oec| can regenerate them. These certificates will be located in ``/var/opt/opscode/nginx/ca/`` and will be named after the |fqdn| for the |chef server oec| server. To determine the |fqdn| for the server, run the following command:

   .. code-block:: bash

      $ hostname -f

   The files to be deleted will be named ``$FQDN.crt`` and ``$FQDN.key``.

#. If your organization has provided |ssl| certificates to the |chef server oec| server, they are located in ``/etc/opscode/private-chef.rb`` as values for the ``nginx[‘ssl_certificate’]`` and ``nginx[‘ssl_certificate_key’]`` settings. Delete these files and regenerate new keys using the same authority.

#. After these files are regenerated, run the following command:

   .. code-block:: bash

      $ private-chef-ctl start


