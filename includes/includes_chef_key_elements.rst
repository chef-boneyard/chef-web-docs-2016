.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is comprised of three main elements: a server, one (or more) nodes, and at least one workstation. 

* The |chef server| acts as a hub, ensuring that the right cookbooks are available, that the right policies are being applied, that the node object used during the previous |chef| run is available to the current |chef| run, and that all of the nodes that will be maintained by |chef| are registered and known to the |chef server|. 
* The workstation is the location from which most of the work happens, including authoring cookbooks, synchronizing with the repository, and uploading information to the |chef server|. 
* Each node hosts the various servers and applications in the cloud or on physical devices; each node contains a |chef client| that performs the various infrastructure automation tasks that each node requires.