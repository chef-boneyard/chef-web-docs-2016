.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife exec| subcommand uses the |knife| configuration file to execute |ruby| scripts in the context of a fully configured |chef client|. Use this subcommand to run scripts that will only access |chef server| one time (or otherwise very infrequently) or any time that an operation does not warrant full usage of the |knife| subcommand library.
