.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``run_list remove`` argument is used to remove run list items (roles or recipes) from a node. A recipe must be in one of the following formats: fully qualified, cookbook, or default. Both roles and recipes must be in quotes, for example: ``'role[ROLE_NAME]'`` or ``'recipe[COOKBOOK::RECIPE_NAME]'``. Use a comma to separate roles and recipes when removing more than one, like this: ``'recipe[COOKBOOK::RECIPE_NAME],COOKBOOK::RECIPE_NAME,role[ROLE_NAME]'``.

This argument has the following syntax::

   knife node run_list remove NODE_NAME RUN_LIST_ITEM

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, to remove a role from a run list, enter:

.. code-block:: bash

   $ knife node run_list remove node 'role[ROLE_NAME]'

To remove a recipe from a run list using the fully qualified format, enter:

.. code-block:: bash

   $ knife node run_list remove node 'recipe[COOKBOOK::RECIPE_NAME]'

