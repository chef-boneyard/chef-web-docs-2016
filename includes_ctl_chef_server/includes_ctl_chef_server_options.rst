.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This command has the following syntax::

   chef-server-ctl OPTION

This command has the following options:

``help``
   |help subcommand|

``reconfigure``
   Use to reconfigure the |chef server|. This option will read from the |path chef server chef server rb| file and apply that configuration to the |chef server|. Any time changes are made to the |chef server rb| file, the |chef server ctl| command should be run with this option.

``restart [SERVICE_NAME]``
   Use to restart all enabled services or to restart a single service.

``start [SERVICE_NAME]``
   Use to start all enabled services or to start a single service.

``status [SERVICE_NAME]``
   Use to view the status of all services or to view the status of a single service.

``stop [SERVICE_NAME]``
   Use to stop all enabled services or to stop a single service.

``tail [SERVICE_NAME]``
   Use to follow the |chef server| logs for all services or for a single service.

``test --all``
   Use to execute |chef pedant|, an integration test suite for the |chef server| installation. By default, only a subset of the available test are run. Add the ``--all`` flag to run the full test suite.
   
.. ``upgrade --all``
..      Use for in-place upgrades of the |chef server osc| server, version 11.0.4 (or higher). This subcommand will apply the necessary SQL changes without having to back up data and install the server from scratch. (Data should still be backed up before performing the upgrade, just to ensure that it is available, should it be needed.) This subcommand may only be used when the |chef server osc| server is configured for a standalone topology and it assumes that all services used by |chef server osc| are enabled.
