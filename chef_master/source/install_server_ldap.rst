=====================================================
Active Directory and LDAP
=====================================================

|chef server oec| supports |microsoft ad| and |ldap| authentication, allowing users to log in using their corporate credentials instead of having a separate |chef| password.

Configure LDAP
=====================================================
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise_settings_ldap.rst

.. include:: ../../includes_server_ldap//includes_server_ldap_configure.rst

Reconfigure
-----------------------------------------------------
When this is done, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will use their |microsoft ad| or |ldap| username and password to log in to |chef server oec|. The first time they log in, they can either create a new account linked to their |microsoft ad| credentials or link an existing |chef server oec| account to their |microsoft ad| credentials.

Verify
=====================================================
Try logging in to |chef server oec| by going to the |chef server oec| management console. Log out if you need to. If |microsoft ad| or |ldap| is configured correctly, you will be asked either to create a new |chef server oec| account or link an existing |chef server oec| account.

Success!
=====================================================
Congratulations! You have now set up |chef server oec| to work with |microsoft ad| or |ldap|.

At this point, all users will use their |microsoft ad| or |ldap| username and password to log in to |chef server oec|. The first time they log in, they can either create a new account linked to their |microsoft ad| credentials or link an existing |chef server oec| account to their |microsoft ad| credentials.

