=====================================================
Recipe DSL
=====================================================

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe.rst

Because the |dsl recipe| is a |ruby| DSL, then anything that can be done using |ruby| can also be done in a recipe, including ``if`` and ``case`` statements, using the ``include?`` |ruby| method, including recipes in recipes, and checking for dependencies.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Approach
     - Description
   * - :doc:`dsl_recipe_use_ruby`
     - Common Ruby techniques can be used with the Recipe DSL methods, including ``if`` and ``case`` statements.
   * - :doc:`dsl_recipe_include_recipes`
     - A recipe can include one (or more) recipes found in other cookbooks by using the ``include_recipe`` keyword. 

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Methods
     - Description
   * - :doc:`attribute? </dsl_recipe_method_attribute>`
     - Use in a recipe to include an attribute.
   * - :doc:`data_bag, data_bag_item </dsl_recipe_method_data_bag>`
     - Use in a recipe to include a data bag or data bag item.
   * - :doc:`platform? </dsl_recipe_method_platform>`
     - Use in a recipe to check for the platform.
   * - :doc:`platform_family? </dsl_recipe_method_platform_family>`
     - Use in a recipe to check for the platform family.
   * - :doc:`resources </dsl_recipe_method_resources>`
     - Use in a recipe to include a resource.
   * - :doc:`search </dsl_recipe_method_search>`
     - Use in a recipe to include search results.
   * - :doc:`tag, tagged?, untag </dsl_recipe_method_tag>`
     - Use in a recipe to use and apply tags.
   * - :doc:`value_for_platform </dsl_recipe_method_value_for_platform>`
     - Use in a recipe to check for a value for a platform.
   * - :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>`
     - Use in a recipe to check for a value for a platform family.

.. The following recipe DSL methods can be used with |windows| registry keys. The order in which they should be used within a recipe: ``key_exists?``, ``value_exists?``, ``data_exists?``, ``get_values``, ``has_subkeys?``, and ``get_subkeys``.

.. toctree::
   :hidden:

   dsl_recipe_use_ruby
   dsl_recipe_include_recipes
   dsl_recipe_method_attribute
   dsl_recipe_method_data_bag
   dsl_recipe_method_platform
   dsl_recipe_method_platform_family
   dsl_recipe_method_resources
   dsl_recipe_method_search
   dsl_recipe_method_tag
   dsl_recipe_method_value_for_platform
   dsl_recipe_method_value_for_platform_family



