.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If password recovery methods are not working, an administrator can reset a user's password. To reset a password, log on to |chef server oec| and run the following command:

.. code-block:: bash

   $ private-chef-ctl password user_name

and then follow the prompts to enter (and confirm) the new password.

For example, to change the password for a user named ``adamjacobs``:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs

and then:

.. code-block:: bash

   private-chef-ctl password user_name

.. code-block:: bash
   
   Enter the new password:  ******
   Enter the new password again:  ******
   Password for adamjacobs successfully set.

.. note:: In |windows ad| or |ldap| mode, this sets the user’s system recovery password.


