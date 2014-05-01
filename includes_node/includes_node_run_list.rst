.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


A run-list defines some (or all) of the configuration settings that are necessary for a node that is under management by |chef| to be put into the desired state. A run-list is:

* An ordered list of roles and/or recipes that are run in an exact order; if a recipe appears more than once in the run-list, the |chef client| will never run that recipe twice
* Always specific to the node on which it runs, though it is possible for many nodes to have run-lists that are similar or even identical
* Stored as part of the node object on the |chef server|
* Maintained using |knife| and uploaded to the |chef server| or via the |chef manage| user interface
