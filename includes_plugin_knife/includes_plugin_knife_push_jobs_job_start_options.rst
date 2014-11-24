.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``--timeout TIMEOUT``
   |timeout push jobs|

``-q QUORUM``, ``--quorum QUORUM``
   |quorum push jobs| Default value: ``100%``.

   For example, there are ten total nodes. If ``--quorum 80%`` is used and eight of those nodes acknowledge the job request, the command will be run against all of the available nodes. If two of the nodes were unavailable, the command would still be run against the remaining eight available nodes because quorum was met.

