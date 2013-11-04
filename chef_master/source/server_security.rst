=====================================================
Security
=====================================================

.. include:: ../../includes_server_security/includes_server_security_ssl.rst

.. warning:: The |fqdn| for the |chef server oec| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef server oec| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef server oec| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Add Custom SSL Certificates
=====================================================
.. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst