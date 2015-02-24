.. This is an included how-to. 

To search for recipes that are used by a node, use the ``recipes`` attribute to search for the recipe names, enter something like:

.. code-block:: bash

   $ knife search node 'recipes:recipe_name'
   
or (note the escaping of the double colon):

.. code-block:: bash

   $ knife search node 'recipes:cookbook_name\:\:recipe_name'

or:

.. code-block:: bash

   $ knife search node '*:*' -a recipes | grep 'recipe_name'
   
