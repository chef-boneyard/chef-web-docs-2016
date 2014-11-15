.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource deploy_branch| resource functions identically to the |resource deploy_revision| resource, in terms of how the |chef client| processes the resource during the |chef client| run. It uses the same ``Deploy::Revision`` provider, the same set of actions and attributes, and is (outside of the name itself) identical to the |resource deploy_revision| resource. Using the |resource deploy_revision| resource is preferred; however, the |resource deploy_branch| resource exists for those situations where, semantically, it is preferable to refer to a resource as a "branch" instead of a "revision".
