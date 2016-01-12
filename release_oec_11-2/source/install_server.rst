.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

=====================================================
Install |chef server oec|
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

The steps below describe the process for installing |chef server oec|.

Steps
=====================================================
.. include:: ../../includes_install/includes_install_11_server_oec.rst

About the Hostname
=====================================================
.. include:: ../../includes_install/includes_install_common_hostname.rst

.. warning:: The |fqdn| for the |chef server oec| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef server oec| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef server oec| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

**To verify if a hostname is a FQDN**

.. include:: ../../includes_install/includes_install_common_hostname_is_fqdn.rst

**To verify is a hostname is resolvable**

.. include:: ../../includes_install/includes_install_common_hostname_is_resolvable.rst

**To change a hostname**

.. include:: ../../includes_install/includes_install_common_hostname_edit.rst

**To add a hostname to /etc/hosts**

.. include:: ../../includes_install/includes_install_common_hostname_add_to_etc_hosts.rst