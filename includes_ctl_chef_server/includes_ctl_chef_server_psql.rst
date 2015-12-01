.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``psql`` subcommand is used to log into the |postgresql| database associated with the named service. This subcommand:

* Uses ``psql`` (the interactive terminal for |postgresql|)
* Has read-only access by default
* Is the recommended way to interact with any |postgresql| database that is part of the |chef server|
* Automatically handles authentication
