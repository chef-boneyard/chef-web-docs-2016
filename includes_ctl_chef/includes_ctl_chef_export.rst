.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``chef export`` subcommand is used to create a |chef zero|-compatible |chef repo| that contains the cookbooks described by a |policylock| file. After a |chef zero|-compatible |chef repo| is copied to a node, the policy can be applied locally on that machine by running ``chef-client -z`` (local mode).
