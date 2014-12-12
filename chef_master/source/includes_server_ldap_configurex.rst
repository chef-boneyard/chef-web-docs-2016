.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When the settings for |ldap| or |windows ad| are changed in the |chef server rb| file, run the following command after saving those changes:

.. code-block:: bash

   $ chef-server-ctl reconfigure

At this point, all users will be able to use their |windows ad| or |ldap| username and password to log in to the |chef server|. The first time they log in, they can either create a new account linked to their |windows ad| credentials or link an existing |chef server| account to their |windows ad| credentials.