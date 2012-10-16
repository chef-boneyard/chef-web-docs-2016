.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|ohai| is a tool that is used to detect certain properties about a node's environment and provide them to the |chef client| during every |chef| run. The types of properties |ohai| reports on include:

* Platform details
* Networking usage
* Memory usage
* Processor usage
* Kernel data
* Host names
* Fully qualified domain names
* and other configuration details

Later, while |chef| configures the node object during each |chef| run, these attributes are used by the |chef client| to ensure that certain properties remain unchanged. (These properties are also referred to as ``automatic`` attributes.) |ohai| is part of the required configuration on each node that is registered with the |chef server|.