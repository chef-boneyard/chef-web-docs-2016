=====================================================
LDAP and Active Directory
=====================================================

.. include:: ../../includes_server_ldap/includes_server_ldap.rst

Requirements
=====================================================
LDAP has the following requirements:

* Users must have an email address in the LDAP directory

Configure LDAP
=====================================================
.. include:: ../../includes_config/includes_config_rb_server_settings_ldap.rst

.. note:: If the |chef server rb| file does not exist, create a file called ``chef-server.rb`` and put it in the ``/etc/opscode/`` directory. If using |chef server osc|, put it in the ``/etc/chef-server/`` directory.

.. include:: ../../includes_server_ldap/includes_server_ldap_configure.rst
