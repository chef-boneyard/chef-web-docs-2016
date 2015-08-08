.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand chef provision| subcommand is used to invoke an embedded |chef client| run to provision machines using |chef provisioning|. By default, this subcommand expects to find a cookbook named ``provision`` in the current working directory. The |chef client| run will run a recipe in this cookbook that uses |chef provisioning| to create one (or more) machines.
