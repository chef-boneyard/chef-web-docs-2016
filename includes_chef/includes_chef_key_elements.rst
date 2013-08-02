.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| comprises three main elements: a server, one (or more) nodes, and at least one workstation. 

* The |chef server| acts as a hub that is available to every node in the organization. This ensures that the right cookbooks (and recipes) are available, that the right policies are being applied, that the node object used during the previous |chef client| run is available to the current |chef client| run, and that all of the nodes that will be maintained by the |chef client| are registered and known to the |chef server|. 
* The workstation is the location from which cookbooks (and recipes) are authored, policy data (such as roles, environments, and data bags) are defined, data is synchronized with the |chef repo|, and data is uploaded to the |chef server|. 
* Each node contains a |chef client| that performs the various infrastructure automation tasks that each node requires.

Cookbooks are also a very important element and are be treated as a separate component (alongside the server, nodes, and the workstation) across the documentation. In general, the cookbooks are authored and managed from the workstation, moved to the |chef| server, and then are pulled down to nodes by the |chef client| during each |chef client| run.