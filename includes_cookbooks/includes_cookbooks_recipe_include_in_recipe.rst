.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A recipe can include one (or more) recipes found in other cookbooks by using the ``include_recipe`` keyword. When a recipe is included, the resources found in that recipe will be inserted (in the same exact order) at the point where the ``include_recipe`` keyword is located. The syntax for including a recipe is like this::

   include_recipe "recipe"

For example:

.. code-block:: ruby

   include_recipe "apache2::mod_ssl"

If a recipe is included more than once in a recipe, only the first inclusion will be processed and any subsequent inclusion will be ignored.
