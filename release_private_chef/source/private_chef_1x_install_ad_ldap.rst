=====================================================
Active Directory and LDAP
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

|chef private| supports |windows ad| and |ldap| authentication, allowing users to log in using their corporate credentials instead of having separate passwords.

Configure
=====================================================
To configure your system to point at an |windows ad| or |ldap| login server, you first need to gather some information.

The Host and Port
-----------------------------------------------------
The host and port of your |windows ad| or |ldap| server. The port defaults to ``389``, which is often the correct setting.

.. code-block:: ruby

   ldap['host'] = '1.2.3.4'
   ldap['port'] = '389'

The Bind User
-----------------------------------------------------
|chef private| needs to do an |ldap| search before it can log in a user, and many |windows ad| and |ldap| systems do not allow an anonymous bind. If your system allows an anonymous bind, you can skip this step and leave the ``bind_dn`` and ``bind_password`` settings blank.

If your system does not allow an anonymous bind, you will need a user with ``READ`` access to the directory. The user must be specified as an |ldap| distinguished name, similar to the following:

.. code-block:: ruby

   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'

The Base DN
-----------------------------------------------------
This is the root |ldap| node that contains all users. For |windows ad|, this is typically ``cn=users`` and then the domain.

.. code-block:: ruby

   ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'

The Login Server Name
-----------------------------------------------------
When the |chef private| management server gives the user information about the authentication server, it may return strings like "The AD/LDAP server is down." or "Log in using your AD/LDAP credentials". If a different word instead of |windows ad| or |ldap| (such as "corporate") is preferred, modify the system adjective. For example:

.. code-block:: ruby

   ldap['system_adjective'] = 'corporate'

private-chef.rb
-----------------------------------------------------
Add the following lines to the attributes file found in the |cookbook private_chef| cookbook:

.. code-block:: ruby

   default['private_chef']['ldap']['host'] = '1.2.3.4'
   default['private_chef']['ldap']['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   default['private_chef']['ldap']['bind_password'] = 'supersecret'
   default['private_chef']['ldap']['base_dn'] = 'cn=users,dc=opscode,dc=com'
   default['private_chef']['ldap']['system_adjective'] = 'corporate'

This cookbook is located at ``/opt/opscode/embedded/cookbooks/private-chef/attributes/default.rb`` by default.

Reconfigure
-----------------------------------------------------
When this is done, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will use their |windows ad| or |ldap| username and password to log in to |chef private|. The first time they log in, they can either create a new account linked to their |windows ad| credentials or link an existing |chef private| account to their |windows ad| credentials.

Verify
=====================================================
Try logging in to |chef private| by going to the |chef private| management console. Log out if you need to. If |windows ad| or |ldap| is configured correctly, you will be asked either to create a new |chef private| account or link an existing |chef private| account.

Success!
=====================================================
Congratulations! You have now set up |chef private| to work with |windows ad| or |ldap|.

At this point, all users will use their |windows ad| or |ldap| username and password to log in to |chef private|. The first time they log in, they can either create a new account linked to their |windows ad| credentials or link an existing |chef private| account to their |windows ad| credentials.

You should now continue with the |windows ad| / |ldap| section of this guide.


