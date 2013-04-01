.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``instance data`` argument is used to generate instance metadata used with custom |opscode| |amazon ami|. This process will read the validation certificate and |chef server| URL from the |knife| configuration file (|path knife rb|) and will output the data in JSON format.

.. warning:: Using this sub-command is an older way of launching |amazon ec2| instances for |chef| and should be considered deprecated. Using the ``server create`` sub-command is preferred (and more flexible). Although this sub-command will remain, the |opscode| custom |amazon ami| are out of date.

