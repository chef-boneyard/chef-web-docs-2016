.. This is an included how-to. 

If your organization has an internal CA, then its root cert will not appear in any cacerts.pem file that ships by default with operating systems and browsers.
Because of this, no currently deployed system will be able to verify certs issued by such an issuing certificate authority.
In order to allow other systems to trust the certs issued by this CA, we need to ship the root cert around so that other systems
can follow the chain of authority all the way back to the root. An intermediate cert is not enough in this case, as the root is not already globally known.

To use a non-global CA that is specific to your own company, append both the server and root CA certificates into a single ``.crt`` file. For example:

.. code-block:: bash

   $ cat server.crt root.crt >> /var/opt/opscode/nginx/ca/FQDN.crt
