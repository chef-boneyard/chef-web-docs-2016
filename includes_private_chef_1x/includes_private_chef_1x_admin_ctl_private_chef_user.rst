.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following commands are available for user management:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``password``
     - Use this command to change a user's password. When |windows ad| or |ldap| is enabled, this command enables (or disables) the system recovery password for that user. For example:

       .. code-block:: bash

          $ private-chef-ctl password adamjacobs
          Enter the new password:  ******
          Enter the new password again:  ******
          Password for adamjacobs successfully set.
   * - ``password --disable``
     - Use this command with the ``--disable`` attribute to disable a user's system recoery password. For example

       .. code-block:: bash
          
          $ private-chef-ctl password adamjacobs --disable
          Password for adamjacobs successfully disabled for System Recovery.

