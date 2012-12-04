.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef| repository is the location in which the following data objects are stored: 

* Cookbooks (including recipes, versions, cookbook attributes, resources, providers, libraries, and templates)
* Roles
* Data bags
* Environments
* Configuration files (for clients, workstations, and servers) 

The |chef| repository is located on a workstation and should be synchronized with a version control system, such as |git|. All of the data in the |chef| repository should be treated like source code. 

|knife| is used to upload data to the |chef server| from the |chef| repository. Once uploaded, that data is used by |chef| to manage all of the nodes that are registered with the |chef server| and to ensure that the correct cookbooks, environments, roles, and other settings are applied to nodes correctly. 

