.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If other password recovery methods are not working for a user, an administrator can set that user's password by logging on to the |chef private| box and running ``private-chef-ctl password``:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs
   Enter the new password:  ******
   Enter the new password again:  ******
   Password for adamjacobs successfully set.

.. note:: In |windows ad| or |ldap| mode, this sets the user’s System Recovery password.


