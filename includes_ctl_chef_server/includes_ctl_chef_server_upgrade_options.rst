.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``--chef-server-url``
   |url chef_server|

``--full-org-name``
   The full name of the |chef server| organization. For example: ``Chef Software, Inc.``. If this option is not specified, the ``upgrade`` command will prompt for it.

``-h``, ``--help``
   Use to show help for the ``chef-server-ctl upgrade`` subcommand.

``--org-name``
   The name of the |chef server| organization. For example: ``chef``. If this option is not specified, the ``upgrade`` command will prompt for it.

``--upload-threads NUMBER``
   The number of threads to use when migrating cookbooks. 

``-y``, ``--yes``
   Use to skip confirmation prompts during the upgrade process.
