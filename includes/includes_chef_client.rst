.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |chef client| is an agent that runs locally on every node that is registered with the |chef server|. When a |chef client| is run, it will perform all of the steps that are required to bring the node into the expected state, including:

* Building, registering, and authenticating the node with the |chef server|
* Synchronizing each required cookbook with the local file cache
* Compiling the resource collection by loading each of the required cookbooks, including recipes, attributes, and all other dependencies
* Taking the appropriate and required actions to configure the node
* Looking for exceptions and notifications, handling each as required