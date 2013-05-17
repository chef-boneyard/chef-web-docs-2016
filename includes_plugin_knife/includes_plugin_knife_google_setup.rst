.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``setup`` argument is used to set up authorization for a |google compute engine| account. If the ``-f`` parameter is used to override the default credential file, it will also need to be used with all subcommands. Be sure to specify the project identifier (and not its name or number) to prevent 404 errors (even if the ``knife google setup`` command runs successfully).