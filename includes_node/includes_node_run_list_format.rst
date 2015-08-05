.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


A run-list must be in one of the following formats: fully qualified, cookbook, or default. Both roles and recipes must be in quotes, for example:

.. code-block:: ruby

   'role[NAME]'

or 

.. code-block:: ruby

   'recipe[COOKBOOK::RECIPE]'

Use a comma to separate roles and recipes when adding more than one item the run-list: 

.. code-block:: ruby

   'recipe[COOKBOOK::RECIPE],COOKBOOK::RECIPE,role[NAME]'
