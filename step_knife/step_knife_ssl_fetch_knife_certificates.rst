.. This is an included how-to. 


.. code-block:: bash

   $ knife ssl fetch

The response is similar to:

.. code-block:: bash

   WARNING: Certificates from <chef_server_url> will be fetched and placed in your trusted_cert
   directory (/Users/grantmc/chef-repo/.chef/trusted_certs).
   
   Knife has no means to verify these are the correct certificates. You should
   verify the authenticity of these certificates after downloading.
   
   Adding certificate for <chef_server_url> in /Users/grantmc/chef-repo/.chef/trusted_certs/grantmc.crt
   Adding certificate for DigiCert Secure Server CA in /Users/grantmc/chef-repo/.chef/trusted_certs/DigiCert_Secure_Server_CA.crt
