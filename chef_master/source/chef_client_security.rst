=====================================================
|chef client_title| Security
=====================================================

.. include:: ../../includes_chef_auth/includes_chef_auth.rst

Authentication
=====================================================
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication.rst

|chef validator|
-----------------------------------------------------
.. include:: ../../includes_security/includes_security_chef_validator.rst

During a |chef client_title| Run
-----------------------------------------------------
.. include:: ../../includes_chef_auth/includes_chef_auth_authentication_chef_run.rst

.. SSL Certificates
.. =====================================================
.. <placeholder>
.. 
.. Add Custom SSL Certificates
.. =====================================================
.. .. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst
.. 
.. Regenerate SSL Certificates
.. =====================================================
.. .. include:: ../../step_server_security/step_server_security_ssl_regenerate_certificates.rst
.. 

|chef client_title| SSL Settings
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst

SSL Certificates
=====================================================
.. warning:: The following content is a draft version.

.. warning:: The following information does not apply to hosted |chef server| 12, only to on-premises |chef server| 12.

|chef server| 12 enables |ssl| verification by default for all requests. The certificate that is generated during the installation of the on-premises |chef server| is self-signed, which means there isn't a signing |ca| to verify. For example, running |knife| from a workstation that has |chef client| 12 installed:

.. code-block:: bash

   $ knife client list

The response is similar to:

.. code-block:: bash

   ERROR: SSL Validation failure connecting to host: chef-server.example.com ...
   ERROR: OpenSSL::SSL::SSLError: SSL_connect returned=1 errno=0 state=SSLv3 ...

This is by design and will occur when the |knife| command is unable to verify the certificate and complete the request to the |chef server|. The |chef client| includes two |knife| commands: |subcommand knife ssl_check| and |subcommand knife ssl_fetch|.

* Use |subcommand knife ssl_check| to troubleshoot SSL certificate issues.
* Use |subcommand knife ssl_fetch| to pull down a certificate from the |chef server| to the |path trusted_certs| directory on the workstation.

After the workstation has the correct |ssl| certificate, bootstrap operations from that workstation will use the certificate in the |path trusted_certs| directory during the bootstrap operation.

knife ssl check
-----------------------------------------------------
Run the |subcommand knife ssl_check| command to verify the state of the |ssl| certificate, and then use the reponse to help troubleshoot issues that may be present.

**Verified**

.. include:: ../../step_knife/step_knife_ssl_check_verify_server_config.rst

**Unverified**

.. include:: ../../step_knife/step_knife_ssl_check_bad_ssl_certificate.rst

knife ssl fetch
-----------------------------------------------------
Run the |subcommand knife ssl_fetch| to pull the self-signed certificate down from the |chef server| to the workstation. For example:

.. code-block:: bash

   $ knife ssl fetch

with a response similar to:

.. code-block:: bash

   WARNING: Certificates from chef-server.example.com will be fetched and placed in your 
   trusted_cert directory (/Users/jtimberman/Downloads/chef-repo/.chef/trusted_certs).
   
   Knife has no means to verify these are the correct certificates. You should verify 
   the authenticity of these certificates after downloading.
   
   Adding certificate for chef-server.example.com in /path/to/.chef/trusted_certs/chef-server.example.com.crt

The |ssl| certificate just downloaded should be verified to ensure that it is, in fact, the same as the certificate on the |chef server|. Compare the |sha256| checksums. First view the checksum on the |chef server|:

.. code-block:: bash

   $ ssh ubuntu@chef-server.example.com sudo sha256sum /var/opt/opscode/nginx/ca/chef-server.example.com.crt

with a response similar to:

.. code-block:: bash

   <ABC123checksum>  /var/opt/opscode/nginx/ca/chef-server.example.com.crt

And then view the checksum on the workstation:

.. code-block:: bash

   $ gsha256sum .chef/trusted_certs/chef-server.example.com.crt

with a response similar to:

.. code-block:: bash

   <ABC123checksum>  .chef/trusted_certs/chef-server.example.com.crt

The checksum values should be identical.
