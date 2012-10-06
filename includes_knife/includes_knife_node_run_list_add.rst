.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``run_list add`` argument is used to add run list items (roles or recipes) to a node. A recipe must be in one of the following formats: fully qualified, cookbook, or default. Both roles and recipes must be in quotes, for example: ``'role[ROLE_NAME]'`` or ``'recipe[COOKBOOK::RECIPE_NAME]'``. Use a comma to separate roles and recipes when adding more than one, like this: ``'recipe[COOKBOOK::RECIPE_NAME],COOKBOOK::RECIPE_NAME,role[ROLE_NAME]'``.

This argument has the following syntax::

   knife node run_list add NODE_NAME RUN_LIST_ITEM (options)

This argument has the following options:

``-a ITEM``, ``--after ITEM``
   |after|

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

For example, to add a role to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'role[ROLE_NAME]'

To add a recipe to a run list using the fully qualified format, enter:

.. code-block:: bash

   $ knife node run_list add node 'recipe[COOKBOOK::RECIPE_NAME]'

To add a recipe to a run list using the cookbook format, enter:

.. code-block:: bash

   $ knife node run_list add node 'COOKBOOK::RECIPE_NAME'

To add the default recipe of a cookbook to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'COOKBOOK'

To add roles and recipes to a run list, enter:

.. code-block:: bash

   $ knife node run_list add node 'recipe[COOKBOOK::RECIPE_NAME],COOKBOOK::RECIPE_NAME,role[ROLE_NAME]'

