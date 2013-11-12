.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|push jobs| has three main components: jobs (managed by the |push jobs| server), a client that is installed on every node in the organization, and one (or more) workstations from which job messages are initiated. 

All communication between these components is done with the following:

* A heartbeat message between the |push jobs| server and each managed node
* A |knife| plugin named |subcommand knife push jobs| with four subcommands: ``job list``, ``job start``, ``job status``, and ``node status``
* Various job messages sent from a workstation to the |push jobs| server
* A single job message that is sent (per job) from the |push jobs| server to one (or more) nodes that are being managed by an |chef server oec| server

