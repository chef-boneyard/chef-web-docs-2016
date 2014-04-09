=====================================================
Security
=====================================================

.. include:: ../../includes_server_security/includes_server_security_ssl.rst

.. warning:: The |fqdn| for the |chef server| should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters.

.. warning:: By default, the |chef server| uses the |fqdn| to determine the common name (``CN``). If the |fqdn| of the |chef server| is longer than 64 characters, the ``reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Add Custom SSL Certificates
=====================================================
.. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst

Regenerate SSL Certificates
=====================================================
.. include:: ../../step_server_security/step_server_security_ssl_regenerate_certificates.rst

|chef client| SSL Settings
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst
