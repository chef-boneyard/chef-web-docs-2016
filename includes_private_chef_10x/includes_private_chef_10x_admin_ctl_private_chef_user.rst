.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following commands are available for user management:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``password``
     - Lets you change a user’s password. When LDAP/AD is enabled, this command enables (or disables) an account’s System Recovery Password.

       .. code-block:: bash

          $ private-chef-ctl password adamjacobs
          Enter the new password:  ******
          Enter the new password again:  ******
          Password for adamjacobs successfully set.

       To disable the user’s System Recovery Password, pass –disable on the command line:

       .. code-block:: bash
          
          $ private-chef-ctl password adamjacobs --disable
          Password for adamjacobs successfully disabled for System Recovery.

