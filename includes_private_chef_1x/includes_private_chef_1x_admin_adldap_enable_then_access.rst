.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If a user already has a |chef private| account prior to |windows ad| or |ldap| being set up, then that user should initially login with their |windows ad| or |ldap| credentials. They will then be taken to the link account page and have the option of indicating that they already have a |chef private| account.

.. image:: ../../images/private_chef_1x_link_existing_account.png 

The user will put in their |chef private| account username and password. This will cause the account to be linked to the user's |windows ad| or |ldap| credentials, so that when the user logs they will already be using their existing |chef private| account. The user will not be shown the link account page again.