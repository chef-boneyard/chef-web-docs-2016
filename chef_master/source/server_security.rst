=====================================================
Security
=====================================================

.. include:: ../../includes_server_security/includes_server_security_ssl.rst

.. warning:: The |fqdn| for the |chef server| should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters.

.. warning:: By default, the |chef server| uses the |fqdn| to determine the common name (``CN``). If the |fqdn| of the |chef server| is longer than 64 characters, the ``reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Custom Certificates
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_cert_custom.rst

|chef analytics_title|
-----------------------------------------------------
.. include:: ../../includes_server_security/includes_server_security_ssl_cert_custom_analytics.rst

Regenerate Certificates
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_cert_regenerate.rst

|chef client_title| Settings
=====================================================
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst