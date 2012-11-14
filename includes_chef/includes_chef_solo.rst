.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef solo| is an open source version of |chef| that allows using cookbooks with nodes that do not have access to a |chef server|. |chef solo| runs locally and requires that a cookbook (and any of its dependencies) be on the same physical disk as the node. |chef solo| is a limited-functionality version of |chef| and **does not support** the following:

* Node data storage
* Search indexes
* Centralized distribution of cookbooks
* Environments, including policy settings and cookbook versions
* A centralized API that interacts with and integrates infrastructure components

