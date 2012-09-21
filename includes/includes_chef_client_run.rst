.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**jamescott: THIS NEEDS TO BE REWRITTEN INto A SINGLE TOPIC AND TURNED INTO A DIAGRAM THAT IS BETTER THAN THE ONE CURRENTLY ON THE WIKI**

When a |chef client| is run, the following happens:

* A new node is built that contains existing |ohai| data, node data that is fetched from the |chef server|, attributes from recipes that are in cookbooks that will be run against the node, and current |ohai| attribute data.
* The private key file is registered with the |chef server| by the |chef client| and authenticated. If a private key does not exist, the |chef client| will attempt to register using the |chef validator| client.
* The |chef client| will query the |chef server| for a list of all libraries, providers, resources, attributes, definitions, and recipes that exist in a all cookbooks. This list is transferred to the local file cache on the node.
* All details about the node are put into a single collection. All libraries from every cookbook are loaded. This ensures that all language extensions and |ruby| classes are available. All attribute files are loaded. These will be used to update node attributes, based on attribute type and precedence. All definitions are loaded (before recipes). These are used to create any pseudo-resources that may be required while the node is being configured and updated. All recipes are loaded. These are added into the resource collection, unless the recipe contains a |ruby| code block, in which case that block of |ruby| code is also evaluated.
* The |chef client| configures the system based on the information that has been collected. Each resource in the resource collection is mapped to a provider, which then takes action on it. Each action configures a specific part of the system. This process is also referred to as convergence. After all of the actions have been taken against the entire system, the |chef client| will save the node so that its data is persisted and available for search.
* If exception and notification handlers have been configured, the |chef client| will trigger messages for each of the handler messages that need to be sent.
* After exception and notification handler messages have been sent (when required), the |chef client| stops and waits for the next request.

**jamescott: need new image!**

.. image:: ../../images/includes_overview_what_is_a_chef_run.png
