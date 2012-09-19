.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef repository| is a location in which important configuration data is stored: 

* Cookbooks (including recipes, versions, and cookbook attributes)
* Roles
* Data bags
* Environments
* Configuration files (for clients, workstations, and servers) 

The repository is synchronized with a workstation. The |chef| repository should be synchronized with a version control system, such as |git|, and then treated like source code. 

The |chef repository| is made available from |github|. It can be cloned from |github| or downloaded as a |tar gz| file (and then associated with another version source control system, such as |svn|, |mercurial|, or |bazaar|).

|knife| is used to upload repository data to the |chef server| from the workstation. Once uploaded, that data is used to manage all of the nodes that are registered with the |chef server| and to ensure that the correct cookbooks, environments, and roles are applied to the correct nodes. 

