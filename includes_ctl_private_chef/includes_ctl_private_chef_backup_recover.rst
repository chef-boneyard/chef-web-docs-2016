.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


The ``backup-recover`` subcommand is used to force a |chef server oec| server to attempt to become the backup server. This is the opposite of the ``master-recover`` subcommand.
 
.. warning:: If this command is run on both back-end servers, it will put the back-end cluster into a state where no server holds the |drbd| resource.

This subcommand has the following syntax:

.. code-block:: bash

   $ private-chef-ctl backup-recover



