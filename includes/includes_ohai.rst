.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|ohai| is a monitoring tool that is used to detect certain properties about the node environment and then report them back to |chef| as node attributes. The types of properties |ohai| reports on include:

* Platform details
* Networking usage
* Memory usage
* Processor usage
* Kernel data
* Host names
* Fully qualified domain names
* and other configuration details

|ohai| reports each piece of data back to the |chef server| as a node attribute. Later, while |chef| configures a node, these attributes are used to ensure that certain properties remain unchanged. |ohai| is part of the required configuration on each node that is registered with the |chef server|.