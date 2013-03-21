.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``password`` subcommand is used to change a user's password. When |microsoft ad| or |ldap| is enabled, this command enables (or disables) the system recovery password for that user. For example:

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl password

This subcommand has the following options:

``--disable``
   Use this option to disable a user's system recovery password.

**Examples**

For example, to change a user's password, enter:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs

and then enter the password and confirm it:

.. code-block:: bash

   Enter the new password:  ******
   Enter the new password again:  ******

to return:

.. code-block:: bash

   Password for adamjacobs successfully set.

To disable a system recovery password:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs --disable

to return:

.. code-block:: bash

   Password for adamjacobs successfully disabled for System Recovery.






