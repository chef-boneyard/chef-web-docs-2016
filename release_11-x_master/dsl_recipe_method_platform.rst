=====================================================
platform? Method
=====================================================

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform.rst

Parameters
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform_parameters.rst

For example:

.. code-block:: ruby

   if platform?('redhat', 'centos', 'fedora')
     # code for only redhat family systems.
   end

or:

.. code-block:: ruby

   if platform?('ubuntu')
     # code for only ubuntu systems
   end

or:

.. code-block:: ruby

   if platform?('ubuntu')
     # do ubuntu things
   end

or:

.. code-block:: ruby

   if platform?('freebsd', 'openbsd')
     # do bsd things
   end


Examples
=====================================================
The following example shows how the ``platform?`` method can be used in a recipe.

**Use an if statement with the platform recipe DSL method**

.. include:: ../../step_resource/step_resource_ruby_block_if_statement_use_with_platform.rst

