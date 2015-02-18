.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``SSL_CERT_FILE`` environment variable to specify the location for the SSL certificate that is used by the |chef client|.

The default locations for SSL certificates:

* |chef client|: ``/opt/chef/embedded/ssl/certs/cacert.pem``
* |chef dk|: ``/opt/chefdk/embedded/ssl/certs/cacert.pem``

The default settings are recommended. To use a custom SSL certificate, update the environment variable to specify the path to the custom SSL certificate. If (for some reason) SSL certificate verification stops working, ensure the correct value is specified for ``SSL_CERT_FILE``.
