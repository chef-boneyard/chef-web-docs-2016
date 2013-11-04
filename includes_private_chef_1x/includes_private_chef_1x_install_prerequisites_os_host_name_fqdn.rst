.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. include:: ../../includes_install/includes_install_server_hostname.rst

.. warning:: The |fqdn| for the |chef private| server should not exceed 64 characters when using |openssl|. |openssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef private| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef private| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

**To verify if a hostname is a FQDN**

.. include:: ../../step_install/step_install_hostname_is_fqdn.rst

**To verify is a hostname is resolvable**

.. include:: ../../step_install/step_install_hostname_is_resolvable.rst

**To change a hostname**

.. include:: ../../step_install/step_install_hostname_edit.rst

**To add a hostname to /etc/hosts**

.. include:: ../../step_install/step_install_hostname_add_to_etc_hosts.rst
