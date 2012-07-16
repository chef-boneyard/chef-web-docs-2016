.. This is an included file that describes a sub-command or argument in Knife.


The ``run_list remove`` argument is used to remove run list items (roles or recipes) from a node. A recipe must be in one of the following formats: fully qualified, cookbook, or default. Both roles and recipes must be in quotes, for example: ``'role[ROLE_NAME]'`` or ``'recipe[COOKBOOK::RECIPE_NAME]'``. Use a comma to separate roles and recipes when removing more than one, like this: ``'recipe[COOKBOOK::RECIPE_NAME],COOKBOOK::RECIPE_NAME,role[ROLE_NAME]'``.

This argument has the following syntax::

   knife node run_list remove NODE_NAME RUN_LIST_ITEM

This argument does not have any options.

For example, to remove a role from a run list, enter:

.. code-block:: bash

   $ knife node run_list remove node 'role[ROLE_NAME]'

To remove a recipe from a run list using the fully qualified format, enter:

.. code-block:: bash

   $ knife node run_list remove node 'recipe[COOKBOOK::RECIPE_NAME]'

