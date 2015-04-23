.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

JSON code:

.. code-block:: javascript

   {
     some: json_data
   }

For example, node data:

.. code-block:: javascript

   {
     "name": "node_name",
     "chef_environment": "_default",
     "run_list": [
       "recipe[recipe_name]"
     ]
     "json_class": "Chef::Node",
     "chef_type": "node",
     "automatic": { ... },
     "normal": { "tags": [ ] },
     "default": { },
     "override": { } 
   }
