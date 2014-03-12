.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``test`` subcommand is used to test one (or more) verified instances. Instances are based on the list of platforms and suites in the KITCHEN.YML file. This subcommand will create a new instance (cleaning up a previous instance, if necessary), converge that instance, set up the test harness, verify the instance using that test harness, and then destroy the instance.

In general, use the ``test`` subcommand to verify the end-to-end quality of a cookbook. Use the ``converge`` and ``verify`` subcommands during the normal the day-to-day development of a cookbook.