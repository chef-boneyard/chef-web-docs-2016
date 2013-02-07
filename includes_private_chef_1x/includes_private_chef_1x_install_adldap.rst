.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Active Directory / LDAP Configuration
Private Chef supports Active Directory and LDAP authentication, allowing users to log in using their corporate credentials instead of having a separate Chef password.

Configuring Active Directory / LDAP
-------------------------------------
To configure your system to point at an Active Directory or LDAP login server, you first need to gather some information:

The Host and Port
++++++++++++++++++
The host and port of your Active Directory / LDAP server. The port defaults to 389, which is right for most servers.

.. code-block:: ruby

   ldap['host'] = '1.2.3.4'
   ldap['port'] = '389'

The port defaults to 389.

The Bind User
++++++++++++++++++
Chef needs to do an LDAP search before it can log in a user, and many Active Directory / LDAP systems do not allow anonymous bind. If your system allows anonymous bind, you can skip this and leave the ``bind_dn`` and ``bind_password`` blank.

If your system does not allow anonymous bind, you will need a user with READ access to the directory. The user must be specified as an LDAP DN, like so:

.. code-block:: ruby

   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'

The Base DN
++++++++++++++++++
This is the root LDAP node that contains all users. For Active Directory, this is typically ``cn=users`` and then the domain.

.. code-block:: ruby

   ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'


The Login Server Name
++++++++++++++++++
When the |chef private| management server gives the user information about the authentication server, it will say things like ``the AD/LDAP server is down`` or ``Log in using your AD/LDAP credentials``. If you’d like to use a different word instead of AD/LDAP (like Corporate or Active Directory), set the system adjective:

.. code-block:: ruby

   ldap['system_adjective'] = 'corporate'

Putting it all together in private-chef.rb
++++++++++++++++++
Add the lines you just set to ``/etc/opscode/private-chef.rb`` the |chef private| machine (all of them if there are multiple):

.. code-block:: ruby

   ldap['host'] = '1.2.3.4'
   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'
   ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'
   ldap['system_adjective'] = 'corporate'


Finish the job: reconfigure
++++++++++++++++++
When this is done, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will use their Active Directory or LDAP username and password to log in to |chef private|. The first time they log in, they can either create a new account linked to their Active Directory credentials or link an existing |chef private| account to their Active Directory credentials.

Check Your Work
-------------------------------------

Try logging in to |chef private| by going to the |chef private| management console. Log out if you need to. If AD/LDAP is configured correctly, you will be asked either to create a new |chef private| account or link an existing |chef private| account.

Success!
-------------------------------------

Congratulations! You have now set up |chef private| to work with Active Directory or LDAP.

At this point, all users will use their Active Directory or LDAP username and password to log in to |chef private|. The first time they log in, they can either create a new account linked to their Active Directory credentials or link an existing Chef account to their Active Directory credentials.

You should now continue with the Active Directory/LDAP section of this guide.


