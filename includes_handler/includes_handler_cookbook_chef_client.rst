.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Start handlers can be distributed using the |cookbook chef_client| cookbook, which will install the handler on the target node during the initial configuration of the node. This ensures that the start handler is always present on the node so that it is available to the |chef client| at the start of every run.
