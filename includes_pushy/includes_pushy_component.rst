.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|pushy| has three main components: jobs (managed by the |pushy| server, a client that is installed on every node in the organization, and one (or more) workstations from which job messages are initiated. 

All communication between these components is done with the following:

* A heartbeat message between the |pushy| server and each managed node
* A |knife| plugin named ``knife-pushy`` with four subcommands: ``job list``, ``job start``, ``job status``, and ``node status``
* Various job messages sent from a workstation to the |pushy| server
* A single job message that is sent (per job) from the |pushy| server to one (or more) nodes that are being managed by an |chef server oec| server

