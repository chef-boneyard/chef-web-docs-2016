.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If a user already has a |chef private| account prior to Active Directory / LDAP being setup, then the user will initially login with their Active Directory / LDAP credentials. They will then be taken to the link account page and have the option of indicating that they already have a |chef private| account.

.. image:: ../../images/private_chef_1x_link_existing_account.png 

The user will put in their |chef private| account username and password. This will cause the account to be linked to the user's Active Directory / LDAP credentials, so that when the user logs on using their Active Directory / LDAP credentials they will be in their already existing |chef private| account. The user will not be shown the link account page again.