.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-sync-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use to prepare the specified organization for synchronization by associating the synchronizing user, and then making that user an administrator. This subcommand must be run on both the source and target organizations.

This option has the following syntax:

.. code-block:: bash

   $ chef-sync-ctl prepare-org ORG_NAME

This option will compile a list of group names, organization names, and actors (users, clients, and groups).
