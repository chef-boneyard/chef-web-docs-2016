.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An attribute is a specific detail about a node. Attributes are used by |chef| to understand:

* The current state of the node
* What the state of the node was at the end of the previous |chef| run
* What the state of the node should be at the end of the current |chef| run

Attributes are defined by:

* The state of the node itself
* Cookbooks (in attribute files and/or recipes)
* Roles
* Environments

During every |chef| run, the |chef client| builds the attribute list using:

* Data about the node collected by |ohai|
* The node object that was saved to the |chef server| at the end of the previous |chef| run
* The rebuilt node object from the current |chef| run, after it is updated for changes to cookbooks (attribute files and/or recipes), roles, and/or environments, and updated for any changes to the state of the node itself

After the node object is rebuilt, all of attributes are compared, and then the node is updated based on attribute precedence. At the end of every |chef| run, the node object that defines the current state of the node is uploaded to the |chef server| so that it can be indexed for search.
