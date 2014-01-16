.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife download| subcommand is used to download roles, cookbooks, environments, nodes, and data bags from the |chef server| to the current working directory. It can be used to back up data on the |chef server|, inspect the state of one or more files, or to extract out-of-process changes users may have made to files on the |chef server|, such as if a user made a change that bypassed version source control. This subcommand is often used in conjunction with ``knife diff``, which can be used to see exactly what changes will be downloaded, and then ``knife upload``, which does the opposite of ``knife download``.
