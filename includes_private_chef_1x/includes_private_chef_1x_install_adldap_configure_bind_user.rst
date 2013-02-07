.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Chef needs to do an LDAP search before it can log in a user, and many Active Directory / LDAP systems do not allow anonymous bind. If your system allows anonymous bind, you can skip this and leave the ``bind_dn`` and ``bind_password`` blank.

If your system does not allow anonymous bind, you will need a user with READ access to the directory. The user must be specified as an LDAP DN, like so:

.. code-block:: ruby

   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'
