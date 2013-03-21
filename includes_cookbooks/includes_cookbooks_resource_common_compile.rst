.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| processes recipes in two phases:

#. First, each resource in the node object is identified and a resource collection is built. All recipes are loaded in a specific order, and then the actions specified within each of them are identified.
#. Next, |chef| configures the system based on the order of the resources in the resource collection. Each resource is mapped to a provider, which then examines the node and then does the steps necessary to complete the action.

Sometimes, it may be necessary to ensure that a specific resource is run during the phase that builds the resource collection. For example:

* A resource may need to run first so that it can download a package that will be used by other resources in the resource collection
* Several resources need to install a package; rather than having running the package installer several times, it can be configured to run only once

To support these types of uses cases, it is possible to tell |chef| to run a resources at the beginning and/or the end of the resource collection phase. Effectively, run a resource before all other resources are added to the resource collection and/or after all resources have been added, but before |chef| configures the system.
