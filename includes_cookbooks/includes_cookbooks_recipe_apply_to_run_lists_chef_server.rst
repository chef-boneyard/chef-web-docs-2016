.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use |knife| to add a recipe to the run-list for a node. For example:

.. code-block:: bash

   $ knife node run list add NODENAME "recipe[apache2]"

More than one recipe can be added:

.. code-block:: bash

   % knife node run list add NODENAME "recipe[apache2],recipe[mysql],role[ssh]"
      run_list:
         recipe[apache2]
         recipe[mysql]
         role[ssh]
