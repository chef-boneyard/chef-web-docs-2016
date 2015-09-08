=====================================================
platform_family? Method
=====================================================

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform_family.rst

Parameters
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform_parameters.rst

For example:

.. code-block:: ruby

   platform_family?('gentoo')

or:

.. code-block:: ruby

   platform_family?('slackware', 'suse', 'arch')

.. note:: ``platform_family?`` will default to ``platform?`` when ``platform_family?`` is not explicitly defined.

Examples
=====================================================
The following examples show how the ``platform_family?`` method can be used in a recipe.

**Use a specific binary for a specific platform**

.. include:: ../../step_resource/step_resource_remote_file_use_platform_family.rst