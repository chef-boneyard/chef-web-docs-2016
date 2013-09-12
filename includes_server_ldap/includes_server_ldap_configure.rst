.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. THIS TOPIC IS JUST A PLACEHOLDER. PROBABLY GETS MOVED ELSEWHERE.

To set up AD/LDAP for Enterprise Chef, do the following.

Add the following lines to the attributes file found in the |cookbook private_chef| cookbook:

.. code-block:: ruby

   default['private_chef']['ldap']['host'] = '1.2.3.4'
   default['private_chef']['ldap']['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'
   default['private_chef']['ldap']['bind_password'] = 'supersecret'
   default['private_chef']['ldap']['base_dn'] = 'cn=users,dc=opscode,dc=com'
   default['private_chef']['ldap']['system_adjective'] = 'corporate'

This cookbook is located at ``/opt/opscode/embedded/cookbooks/private-chef/attributes/default.rb`` by default.

When this is done, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will use their |microsoft ad| or |ldap| username and password to log in to |chef server oec|. The first time they log in, they can either create a new account linked to their |microsoft ad| credentials or link an existing |chef server oec| account to their |microsoft ad| credentials.

Try logging in to |chef server oec| by going to the |chef server oec| management console. Log out if you need to. If |microsoft ad| or |ldap| is configured correctly, you will be asked either to create a new |chef server oec| account or link an existing |chef server oec| account.
