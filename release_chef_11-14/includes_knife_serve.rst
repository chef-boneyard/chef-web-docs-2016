.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife serve| subcommand is used to run a persistent |chef zero| against the local |chef repo|. (|chef zero| is a lightweight |chef server| that runs in-memory on the local machine.) This is the same as running the |chef client| executable with the ``--local-mode`` option. The ``chef_repo_path`` is located automatically and the |chef server| will bind to port ``8900`` by default. |subcommand knife serve| will print the URL for the local |chef server|, so that it may be added to the |knife rb| file.
