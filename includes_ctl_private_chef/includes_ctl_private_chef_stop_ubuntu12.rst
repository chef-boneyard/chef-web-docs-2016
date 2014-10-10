.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Private Chef, an early version of the Chef Server.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``private-chef-ctl stop`` subcommand should not be run when the |chef server| 11.x server is instaled on |ubuntu| 12 in a high availability configuration. This will stop |keepalived|, and then trigger a |drbd| failover. Instead, stop each service individually (e.g. ``private-chef-ctl stop name_of_service``), as described below. This behavior has been fixed in the |chef server| 12 release.
