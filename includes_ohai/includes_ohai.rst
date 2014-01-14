.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|ohai| is a tool that is used to detect attributes on a node, and then provide these attributes to the |chef client| at the start of every |chef client| run. |ohai| is required by the |chef client| and must be present on a node. The types of attributes |ohai| collects include (but are not limited to):

* Platform details
* Network usage
* Memory usage
* Processor usage
* Kernel data
* Host names
* Fully qualified domain names
* Other configuration details

Attributes that are collected by |ohai| are automatic attributes, in that these attributes are used by the |chef client| to ensure that these attributes remain unchanged after the |chef client| is done configuring the node.
