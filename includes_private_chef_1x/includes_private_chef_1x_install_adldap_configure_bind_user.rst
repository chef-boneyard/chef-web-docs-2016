.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| needs to do an |ldap| search before it can log in a user, and many |windows ad| and |ldap| systems do not allow an anonymous bind. If your system allows an anonymous bind, you can skip this step and leave the ``bind_dn`` and ``bind_password`` settings blank.

If your system does not allow an anonymous bind, you will need a user with ``READ`` access to the directory. The user must be specified as an |ldap| distinguished name, similar to the following:

.. code-block:: ruby

   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'
