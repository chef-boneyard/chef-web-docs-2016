.. This is an included how-to. 



|ssl| certificates should be regenerated periodically. This is an important part of protecting the |chef server oec| from vulnerabilities and helping to prevent the information stored on the |chef server| from being compromised.

To regenerate |ssl| certificates, run the following command:

.. code-block:: bash

   $ private-chef-ctl stop

and then do one of the following:

* If the |chef server oec| already uses |ssl| certificates, they are located in ``/etc/opscode/private-chef.rb`` as values for the ``nginx[‘ssl_certificate’]`` and ``nginx[‘ssl_certificate_key’]`` settings. Delete these files and regenerate new keys using the same authority.

* If the |chef server oec| does not already use |ssl| certificates, |chef server oec| can generate them. These certificates will be located in ``xxxx`` and will be named after the |fqdn| for the |chef server oec| server. To determine the |fqdn| for the server, run ``hostname -f``. The files to be deleted will be named ``$FQDN.crt`` and ``$FQDN.key``. After these files are deleted, run the following command:

   .. code-block:: bash

      private-chef-ctl start

