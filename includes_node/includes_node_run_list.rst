.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


A run-list defines all of the information necessary for |chef| to configure a node into the desired state. A run-list is:

* An ordered list of roles and/or recipes
* Recipes and/or roles are run in the exact order defined in the run-list; if a recipe appears more than once in the run-list, the |chef client| will not run it twice
* Always specific to the node on which it runs; nodes may have a run-list that is identical to the run-list used by other nodes
* Stored as part of the node object on the |chef server|
* Maintained using |knife|, and then uploaded from the workstation to the |chef server|, or is maintained using the |chef manage|
