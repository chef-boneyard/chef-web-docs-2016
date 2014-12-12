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

|chef server| 12 enables |ssl| verification by default for all requests made to the server, such as those made by |knife| and the |chef client|. The certificate that is generated during the installation of the |chef server| is self-signed, which means there isn't a signing |ca| to verify. In addition, this certificate must be downloaded to any machine from which |knife| and/or the |chef client| will make requests to the |chef server|.

For example, without downloading the |ssl| certificate, and then running the following |knife| command:

.. code-block:: bash

   $ knife client list

responds with an error similar to:

.. code-block:: bash

   ERROR: SSL Validation failure connecting to host: chef-server.example.com ...
   ERROR: OpenSSL::SSL::SSLError: SSL_connect returned=1 errno=0 state=SSLv3 ...

This is by design and will occur until a verifiable certificate is added to the machine from which the request is sent. 

|path trusted_certs|
-----------------------------------------------------
.. include:: ../../includes_chef_repo/includes_chef_repo_directory_trusted_certs.rst

|knife_title| Subcommands
-----------------------------------------------------
The |chef client| includes two |knife| commands: |subcommand knife ssl_check| and |subcommand knife ssl_fetch|.

* Use |subcommand knife ssl_check| to troubleshoot SSL certificate issues
* Use |subcommand knife ssl_fetch| to pull down a certificate from the |chef server| to the |path trusted_certs| directory on the workstation.

After the workstation has the correct |ssl| certificate, bootstrap operations from that workstation will use the certificate in the |path trusted_certs| directory during the bootstrap operation.

knife ssl check
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Run the |subcommand knife ssl_check| command to verify the state of the |ssl| certificate, and then use the reponse to help troubleshoot issues that may be present.

**Verified**

.. include:: ../../step_knife/step_knife_ssl_check_verify_server_config.rst

**Unverified**

.. include:: ../../step_knife/step_knife_ssl_check_bad_ssl_certificate.rst

knife ssl fetch
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Run the |subcommand knife ssl_fetch| to download the self-signed certificate from the |chef server| to the |path trusted_certs| directory on a workstation. For example:

.. include:: ../../step_knife/step_knife_ssl_check_bad_ssl_certificate.rst

**Verify Checksums**

.. include:: ../../step_knife/step_knife_ssl_fetch_verify_certificate.rst

