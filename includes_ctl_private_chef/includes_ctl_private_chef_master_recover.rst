.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``master-recover`` subcommand is used to force a |chef private| server to attempt to become the master server. This command is typically run in tandem with the ``backup-recover`` subcommand on the back-end peer, unless the back-end peer is no longer available. 

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl master-recover



