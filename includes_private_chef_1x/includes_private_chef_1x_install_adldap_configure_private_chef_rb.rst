.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Add the following lines to the attributes file found in the |cookbook private_chef| cookbook:

.. code-block:: ruby

   default['private_chef']['ldap']['host'] = '1.2.3.4'
   default['private_chef']['ldap']['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   default['private_chef']['ldap']['bind_password'] = 'supersecret'
   default['private_chef']['ldap']['base_dn'] = 'cn=users,dc=opscode,dc=com'
   default['private_chef']['ldap']['system_adjective'] = 'corporate'

This cookbook is located at ``/opt/opscode/embedded/cookbooks/private-chef/attributes/default.rb`` by default.
