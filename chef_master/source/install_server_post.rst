=====================================================
Post-Config Options
=====================================================

The following sections describe configuration steps that should be done after the |chef server| is installed.

Add Organizations
=====================================================
In order to begin managing your infrastructure with the |chef server|, you will need to create an organization. An organization is completely multi-tenant |chef| infrastructure that shares nothing with other organizations on the |chef server|.

Add Organization
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_admin_organization_add.rst

Reset Validation Key
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_validation_reset_key.rst

Generate |knife_title| Config File
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_admin_organization_generate_config.rst

Create Users
=====================================================

A new user account must be created before using the |chef server|.

.. note:: If your server is in |windows ad| or |ldap| mode, signup is unnecessary and users can simply log in to |chef server oec| using their credentials.

#. Visiting the |chef server| management console will present users with a **Login** page, which contains a **Sign Up** link.
#. Enter the information on this page, and then click **Submit**.
#. Once the user account is created, download the private key. This key is used for API access to the |chef server|. The |chef server| does not keep a copy of this key, so please store it somewhere safe.


Active Directory and LDAP
=====================================================
The |chef server| supports |windows ad| and |ldap| authentication, allowing users to log in using their corporate credentials instead of having a separate |chef| password.

Configure LDAP
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise_settings_ldap.rst

.. include:: ../../includes_server_ldap//includes_server_ldap_configure.rst

Reconfigure
+++++++++++++++++++++++++++++++++++++++++++++++++++++
When this is done, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will use their |windows ad| or |ldap| username and password to log in to the |chef server|. The first time they log in, they can either create a new account linked to their |windows ad| credentials or link an existing |chef server| account to their |windows ad| credentials.

Verify
-----------------------------------------------------
Try logging in to the |chef server| by going to the |chef server| management console. Log out if you need to. If |windows ad| or |ldap| is configured correctly, you will be asked either to create a new |chef server| account or link an existing |chef server| account.

At this point, all users will use their |windows ad| or |ldap| username and password to log in to the |chef server|. The first time they log in, they can either create a new account linked to their |windows ad| credentials or link an existing |chef server| account to their |windows ad| credentials.