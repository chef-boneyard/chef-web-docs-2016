.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand chef update| subcommand is used to read the |policyfile rb| file, and then apply any changes. This will resolve dependencies and will create a |policylock| file. The locked policy will reflect any changes to the run-list and will pull in any cookbook updates that are compatible with any version constraints defined in the |policyfile rb| file.
