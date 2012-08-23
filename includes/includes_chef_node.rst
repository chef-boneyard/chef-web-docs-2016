.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A node is a server or virtual server that is configured to be maintained by a |chef client|. A node can be physical or cloud-based. The |chef client| runs on each node and |ohai| is used to collect data about the system so that |chef| can use it. Each node keeps a cache that contains the most recent node object and all of the cookbooks that are used during configuration of the node.