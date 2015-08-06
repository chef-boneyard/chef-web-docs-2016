.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``recipe_name`` method to return the name of a recipe. 

The syntax for the ``recipe_name`` method is as follows:

.. code-block:: ruby

   recipe_name

This method is often used as part of a log entry. For example:

.. code-block:: ruby

   Chef::Log.info('I am a message from the #{recipe_name} recipe in the #{cookbook_name} cookbook.')
