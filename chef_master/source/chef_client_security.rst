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

SSL Certificates
=====================================================
.. warning:: The following information does not apply to hosted |chef server| 12, only to on-premises |chef server| 12.

.. include:: ../../includes_server_security/includes_server_security_ssl_cert_client.rst

Changes Prior to |chef| 12
-----------------------------------------------------
The following changes were made during certain |chef client| release prior to the |chef client| 12 release:

* In the |chef client| 11.8 release, the ``verify_api_cert`` setting was added to the |client rb| file with a default value of ``false``. 
* In the |chef client| 11.12 release, the ``local_key_generation`` and ``ssl_verify_mode`` settings were added to the |client rb| file. Two |knife| commands---|subcommand knife ssl_check| and |subcommand knife ssl_fetch| were added. A new directory in the |chef repo|---|path trusted_certs|---was added. These new settings and tools enabled users who wanted to use stronger |ssl| settings to generate the private/public key pair from the |chef client|, verify HTTPS requests, verify |ssl| certificates, and pull the |ssl| certificate from the |chef server| down to the |path trusted_certs| directory.
* In the |chef client| 12 release, the default value for ``local_key_generation`` was changed to ``true``.

Starting with |chef client| 12, |ssl| certificate validation is enabled by default and the |subcommand knife ssl_fetch| becomes `part of the setup process <http://docs.chef.io/install_dk.html#get-ssl-certificates>`__ for every workstation.

|path trusted_certs|
-----------------------------------------------------
.. include:: ../../includes_chef_repo/includes_chef_repo_directory_trusted_certs.rst

|client rb| Settings
-----------------------------------------------------
.. include:: ../../includes_chef_client/includes_chef_client_ssl_config_settings.rst

|knife_title| Subcommands
-----------------------------------------------------
The |chef client| includes two |knife| commands for managing |ssl| certificates:

* Use `knife ssl check <http://docs.chef.io/knife_ssl_check>`__ to troubleshoot |ssl| certificate issues
* Use `knife ssl fetch <http://docs.chef.io/knife_ssl_fetch>`__ to pull down a certificate from the |chef server| to the |path trusted_certs| directory on the workstation.

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

.. include:: ../../step_knife/step_knife_ssl_fetch_verify_certificate.rst

**Verify Checksums**

.. include:: ../../step_knife/step_knife_ssl_fetch_verify_certificate.rst

