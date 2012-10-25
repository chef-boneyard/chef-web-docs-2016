.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A recipe must be assigned to a run-list using the appropriate name, as defined by the cookbook directory and namespace. For example, a cookbook directory has the following structure::

   cookbooks/
     apache2/
       recipes/
         default.rb
         mod_ssl.rb

There are two recipes: a default recipe (that has the same name as the cookbook) and a recipe named mod_ssl. The syntax that applies a recipe to a run-list is like this::

   {
     "run_list": [
     "recipe[cookbook_name::default_recipe]",
     "recipe[cookbook_name::recipe_name]"
     ]
   }

where ``::default_recipe`` is implied (and does not need to be specified). On a node, these recipes can be assigned to a node's run-list like this::

   {
     "run_list": [
     "recipe[apache2]",
     "recipe[apache2::mod_ssl]"
     ]
   }

**jamescott: LOOKS LIKE BIFURCATION FOR CHEF SERVER AND CHEF SOLO IS REQUIRED HERE**

**jamescott: CHEF SERVER AND CHEF CLIENT BELOW**
Use |knife| to add the recipe to the node's run-list. For example:

.. code-block:: bash

   $ knife node run list add NODENAME "recipe[apache2]"

More than one recipe can to be added:

.. code-block:: bash

   % knife node run list add NODENAME "recipe[apache2],recipe[mysql],role[ssh]"
      run_list:
         recipe[apache2]
         recipe[mysql]
         role[ssh]

**jamescott: CHEF SERVER AND CHEF CLIENT ABOVE**

**jamescott: CHEF SOLO BELOW**
Use a JSON file to pass run-list details to |chef solo| as long as the cookbook in which the recipe is located is available to the system on which |chef solo| is running. For example, a JSON file named "dna.json" contains the following details::

   {
     "run_list": ["recipe[apache2]"]
   }

To add the run-list to the node, enter the following::

.. code-block:: bash

   $ sudo chef-solo -j /etc/chef/dna.json

**jamescott: CHEF SOLO ABOVE**
