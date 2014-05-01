.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A resource defines a configuration item and its desired state on a system under management by |chef|. For example, a package that should be installed, a service that should be started, or a user account that should be created are all examples of resources. Recipes contain one or more resource declarations, which are processed in the order in which they appear.

During a |chef client| run, each resource declaration is associated with a platform-specific provider, which contains the implementation logic necessary to modify the resource. The provider then tests to see if the resource is in the declared state, and if not, does the work to put the resource into that state. Thus, |chef| can be considered a test-and-repair system.
