.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If a user already has a |chef server oec| account prior to |microsoft ad| or |ldap| being set up, then that user should initially login with their |microsoft ad| or |ldap| credentials. They will then be taken to the link account page and have the option of indicating that they already have a |chef server oec| account.

.. image:: ../../images/private_chef_1x_link_existing_account.png 

The user will put in their |chef server oec| account username and password. This will cause the account to be linked to the user's |microsoft ad| or |ldap| credentials, so that when the user logs they will already be using their existing |chef server oec| account. The user will not be shown the link account page again.