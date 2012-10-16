.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |chef| run is a series of steps taken by a |chef client| for the purpose of bring a node into the desired state. When a |chef client| performs a |chef| run, the following happens:

#. Get process configuration data from |client rb|.
#. Get node configuration data from |ohai|.
#. Authenticate to the |chef server| using an RSA private key. The the name of the node is required as part of the authentication process. This is obtained from either the ``node_name`` attribute from the |client rb| file or the |fqdn| for the node (as identified by |ohai|). If this is the first |chef| run for the node, the |chef validator| will be used to generate the RSA private key.
#. The |chef client| pulls down the node object from the |chef server|. This node object is the same node object that was used during the previous |chef| run. If this is the first |chef| run for the node, there will not be a node object to pull down from the |chef| server.
#. Re-build the node object. If this is the first |chef| run for the node, the node object will contain only the default run-list. For any subsequent |chef| run, the re-built node object will also contain the run-list from the previous |chef| run.
#. Expand the run-list from the re-built node object, compiling a full and complete list of roles and recipes that will be applied to the node and placed in the specific order the roles and recipes will be applied.
#. The |chef client| asks the |chef server| for a list of all cookbook files (including recipes, templates, resources, providers, attributes, libraries, and definitions) that will be required to do every action identified in the run-list for the re-built node object. The |chef server| provides to the |chef client| a list of all of the files. The |chef client| compares this list to the cookbook files cached on the node (from previous |chef| runs), and then pulls down a copy of every file that has changed since the previous |chef| run, along with any new files.
#. All attributes in the re-built node object are reset. All attributes from recipes, roles, environments, |ohai| and attribute files are loaded. All attributes in the re-built node object are updated with the attribute data, and according to attribute precedence. When all of the attributes are updated, the re-built node object is complete.
#. The |chef client| identifies each resource in the node object and builds the resource collection. All details about the node are put into a single collection. All definitions are loaded (to ensure that any pseudo-resources are available). All libraries are loaded (to ensure that all language extensions and |ruby| classes are available). All recipes are loaded and each action specified specified in recipes are identified and any |ruby| blocks within recipes are evaluated.
#. The |chef client| configures the system based on the information that has been collected. Each resource in the resource collection is mapped to a provider. The provider examines the node, and then does the steps necessary to complete the action. Each action configures a specific part of the system. This process is also referred to as convergence.
#. When all of the actions identified by resources in the resource collection have been done, the |chef client| updates the node object on the |chef server| with the node object that was built during this |chef| run. This makes the node object (and the data in the node object) available for search.
#. The |chef client| checks the resource collection for the presence of exception and report handlers. If any are present, each one is processed appropriately.
#. The |chef client| stops and waits for the next |chef| run.

.. image:: ../../images/chef_run_legacy.png
