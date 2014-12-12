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

|chef server| 12 enables SSL verification by default for all requests. The certificate that is generated during the installation of the on-premises |chef server| is self-signed, which means there isn't a signing certificate authority (CA) to verify. For example, running |knife| from a workstation that has |chef client| 12 installed:

.. code-block:: bash

   $ knife client list

will return something similar to:

.. code-block:: bash

   ERROR: SSL Validation failure connecting to host: chef-server.example.com ...
   ERROR: OpenSSL::SSL::SSLError: SSL_connect returned=1 errno=0 state=SSLv3 ...

This is by design and will occur when the |knife| command is unable to verify the certificate and complete the request to the |chef server|. The |chef client| includes two |knife| commands: |subcommand knife ssl_check| and |subcommand knife ssl_fetch|.

* Use |subcommand knife ssl_check| to troubleshoot SSL certificate issues.
* Use |subcommand knife ssl_fetch| to pull down a certificate from the |chef server| to the ``/trusted_certs`` directory on the workstation.

After the workstation has the correct SSL certificate, bootstrap operations from that workstation will use the certificate in the ``/trusted_certs`` directory during the bootstrap operation.

knife ssl_check
-----------------------------------------------------
Run the |subcommand knife ssl_check| command to verify the state of the SSL certificate. Use this command to troubleshoot issues with the SSL certificate. For example:

.. code-block:: bash

   $ knife ssl check

If the certificate cannot be verified, the command will return something similar to:

.. code-block:: bash

   Connecting to host chef-server.example.com:443
   ERROR: The SSL certificate of chef-server.example.com could not be verified
   Certificate issuer data:
     /C=US/ST=WA/L=S/O=Corp/OU=Ops/CN=chef-server.example.com/emailAddress=you@example.com
   
   Configuration Info:
   
   OpenSSL Configuration:
   * Version: OpenSSL 1.0.1j 15 Oct 2014
   * Certificate file: /opt/chefdk/embedded/ssl/cert.pem
   * Certificate directory: /opt/chefdk/embedded/ssl/certs
   Chef SSL Configuration:
   * ssl_ca_path: nil
   * ssl_ca_file: nil
   * trusted_certs_dir: "/Users/jtimberman/Downloads/chef-repo/.chef/trusted_certs"
   
   TO FIX THIS ERROR:
   
   If the server you are connecting to uses a self-signed certificate,
   you must configure chef to trust that server's certificate.
   
   By default, the certificate is stored in the following location on the
   host where your chef-server runs:
   
     /var/opt/opscode/chef-server/nginx/ca/SERVER_HOSTNAME.crt
   
   Copy that file to your trusted_certs_dir (currently:
   
     /Users/jtimberman/Downloads/chef-repo/.chef/trusted_certs)
   
   using SSH/SCP or some other secure method, then re-run this command to
   confirm that the server's certificate is now trusted.

And if it can be verified:

.. code-block:: bash

   Connecting to host api.opscode.com:443
   Successfully verified certificates from `chef-server.example.com` 

knife ssl_fetch
-----------------------------------------------------
Run the |subcommand knife ssl_fetch| to pull the self-signed certificate down from the |chef server| to the workstation. For example:

.. code-block:: bash

   $ knife ssl fetch

The command will return something similar to:

.. code-block:: bash

   WARNING: Certificates from chef-server.example.com will be fetched and placed in your 
   trusted_cert directory (/Users/jtimberman/Downloads/chef-repo/.chef/trusted_certs).
   
   Knife has no means to verify these are the correct certificates. You should verify 
   the authenticity of these certificates after downloading.
   
   Adding certificate for chef-server.example.com in /path/to/.chef/trusted_certs/chef-server.example.com.crt

The SSL certificate just downloaded should be verified to ensure that it is, in fact, the same as the certificate on the |chef server|. Compare the SHA256 checksums. First view the checksum on the |chef server|:

.. code-block:: bash

   $ ssh ubuntu@chef-server.example.com sudo sha256sum /var/opt/opscode/nginx/ca/chef-server.example.com.crt

The command will return something similar to:

   <ABC123checksum>  /var/opt/opscode/nginx/ca/chef-server.example.com.crt

And then view the checksum on the workstation:

.. code-block:: bash

   $ gsha256sum .chef/trusted_certs/chef-server.example.com.crt

The command will return something similar to:

   <ABC123checksum>  .chef/trusted_certs/chef-server.example.com.crt

The checksum values should be identical.