.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A node is any server or virtual server that is configured to be maintained by a |chef client|. A node can be physical or cloud-based. A |chef| organization comprises any combination of physical and cloud-based nodes. A |chef client| runs on each node. |ohai| is used to collect data about the system so that it is available to the |chef client| during every |chef| run.