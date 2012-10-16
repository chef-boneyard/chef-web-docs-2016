.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is comprised of three main elements: a server, one (or more) nodes, and at least one workstation. 

* The |chef server| acts as a hub that is available to every node in the |chef| organization. This ensures that the right cookbooks are available, that the right policies are being applied, that the node object used during the previous |chef| run is available to the current |chef| run, and that all of the nodes that will be maintained by |chef| are registered and known to the |chef server|. 
* The workstation is the location from which cookbooks are authored, policy data (such as roles, environments, and data bags) are defined, data is synchronized with the |chef| repository, and data is uploaded to the |chef server|. 
* Each node contains a |chef client| that performs the various infrastructure automation tasks that each node requires.