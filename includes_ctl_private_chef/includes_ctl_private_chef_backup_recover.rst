.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``backup-recover`` subcommand is used to force a |chef private| server to attempt to become the backup server. This is the opposite of the ``master-recover`` subcommand.
 
.. warning:: If this command is run on both back-end servers, it will put the back-end cluster into a state where no server holds the |drbd| resource.

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl backup-recover



