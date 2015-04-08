.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


Use an empty run-list to determine if a failed |chef client| run has anything to do with the recipes that are defined within that run-list. This is a quick way to discover if the underlying cause of a |chef client| run failure is a configuration issue. If a failure persists even if the run-list is empty, check the following:

* Configuration settings in the |knife rb| file
* Permissions for the user to both the |chef server| and to the node on which the |chef client| run is to take place
