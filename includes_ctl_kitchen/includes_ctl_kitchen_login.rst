.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``login`` subcommand is used to log in to a single instance. Instances are based on the list of platforms and suites in the |kitchen yml| file. After logging in successfully, the instance can be interacted with just like any other virtual machine, including adding or removing packages, starting or stopping services, and so on. It's a sandbox. Make any change necessary to help improve the coverage for cookbook testing.