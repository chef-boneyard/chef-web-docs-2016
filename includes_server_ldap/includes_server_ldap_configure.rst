.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When the settings for |ldap| or |microsoft ad| are changed in the |enterprise rb| file, run the following command after saving those changes:

.. code-block:: bash

   $ private-chef-ctl reconfigure

At this point, all users will be able to use their |microsoft ad| or |ldap| username and password to log in to |chef server oec|. The first time they log in, they can either create a new account linked to their |microsoft ad| credentials or link an existing |chef server oec| account to their |microsoft ad| credentials.