=====================================================
About the Recipe DSL
=====================================================

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe.rst

Because the |dsl recipe| is a |ruby| DSL, then anything that can be done using |ruby| can also be done in a recipe, including ``if`` and ``case`` statements, using the ``include?`` |ruby| method, including recipes in recipes, and checking for dependencies.

.. note:: Read all about the `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_ in a single topic.

Use Ruby
=====================================================
Common |ruby| techniques can be used with the |dsl recipe| methods.

if Statements
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_statement_if.rst

case Statements
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_statement_case.rst

include? Method
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_method_include.rst

Array Syntax Shortcut
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_shortcut_array.rst

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst

Include Recipes
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_include_in_recipe.rst

Reload Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Accessor Methods
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst

Recipe DSL Methods
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method.rst

.. note:: Read all about the `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_ in a single topic. The topics in the tables below provide links to individual pages for each method.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Methods
     - Description
   * - :doc:`attribute? </dsl_recipe_method_attribute>`
     - Use in a recipe to include an attribute.
   * - :doc:`cookbook_name </dsl_recipe_method_cookbook_name>`
     - Use in a recipe to get the name of the cookbook in which a recipe is located.
   * - :doc:`data_bag, data_bag_item </dsl_recipe_method_data_bag>`
     - Use in a recipe to include a data bag or data bag item.
   * - :doc:`platform? </dsl_recipe_method_platform>`
     - Use in a recipe to check for the platform.
   * - :doc:`platform_family? </dsl_recipe_method_platform_family>`
     - Use in a recipe to check for the platform family.
   * - :doc:`recipe_name </dsl_recipe_method_recipe_name>`
     - Use in a recipe to get the name of a recipe.
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





