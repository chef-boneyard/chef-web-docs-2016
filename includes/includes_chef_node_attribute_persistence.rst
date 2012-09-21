.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

At the beginning of a |chef| run, all default, override, and automatic attributes are completely reset. |chef| then rebuilds the attributes based on the default and override values defined for cookbooks, recipes, roles, and environments and updates automatic attributes based on |ohai| data. At the end of the |chef| run, default, override, and automatic attributes effectively disappear; only normal attributes remain. Any new attributes passed to the |chef client| in a |json| file are merged with the existing normal attributes.

chef-client run, default, override, and automatic attributes are completely reset.

They are then rebuilt using the currently applicable cookbooks, recipes, roles, environment and Ohai data. 

Thus, default and override attributes set in cookbook attribute files, roles, recipes, or environments will disappear once the recipe, role, or environment is removed from the node and chef-client is run on the node.

Normal attributes are not reset.
Rather, on each chef-client run, any new attributes passed to chef-client in a JSON file are merged with the existing normal attributes in the node's data(using Deep Merge). 
This means that any normal attribute set in a recipe or cookbook attribute file will remain even after the cookbook or role has been removed from the node's run list.

