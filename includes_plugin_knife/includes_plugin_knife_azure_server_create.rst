.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |windows azure| cloud instance. This will provision a new image in |windows azure|, perform a bootstrap (using the |ssh| protocol), and then install the |chef client| on the target system so that it can be used to configure the node and to communicate with a |chef server|.

