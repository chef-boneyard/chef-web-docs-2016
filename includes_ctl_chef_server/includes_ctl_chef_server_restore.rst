.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``restore`` subcommand is used to restore |chef server| data from a backup that was created by the ``backup`` subcommand. This subcommand may also be used to add |chef server| data to a newly-installed server. This subcommand:

* Requires |rsync| to be installed on the |chef server| prior to running the command
* Requires a ``chef-server-ctl reconfigure`` prior to running the command
* Should not be run in a |chef server| configuration with an external |postgresql| database; `use knife ec backup <https://github.com/chef/knife-ec-backup>`__ instead
