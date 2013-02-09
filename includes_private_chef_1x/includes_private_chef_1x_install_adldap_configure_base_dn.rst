.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This is the root |ldap| node that contains all users. For |microsoft ad|, this is typically ``cn=users`` and then the domain.

.. code-block:: ruby

   ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'
