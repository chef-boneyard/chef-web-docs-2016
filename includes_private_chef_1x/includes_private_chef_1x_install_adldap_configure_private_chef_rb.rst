.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Add the following lines to the |private chef rb| file:

.. code-block:: ruby

   ldap['host'] = '1.2.3.4'
   ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   ldap['bind_password'] = 'supersecret'
   ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'
   ldap['system_adjective'] = 'corporate'

