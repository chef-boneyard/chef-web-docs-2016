.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef server| will only try to distribute the cookbooks that are needed to configure an individual node. This is determined by identifying the roles and recipes that are assigned directly to that system, and then to expand the list of dependencies, and then deliver that entire set to the node. In some cases, if the dependency is not specified in the cookbook's metadata the |chef server| may not treat that dependency as a requirement, which will result in an error message. If an error message is received from the |chef server| about cookbook distribution, verify the ``depends`` entries in the |metadata rb| file, and then try again.

