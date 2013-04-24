=====================================================
Recipe DSL
=====================================================

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe.rst

Work with the Recipe DSL
=====================================================
Because the |dsl recipe| is a |ruby| DSL, then anything that can be done using |ruby| can also be done in a recipe, including ``if`` and ``case`` statements, using the ``include?`` |ruby| method, including recipes in recipes, and checking for dependencies.

Use Ruby in Recipes
-----------------------------------------------------
Common |ruby| techniques can be used with the |dsl recipe| methods.

if Statements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_statement_if.rst

case Statements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_statement_case.rst

include? Method
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_method_include.rst

Array Syntax Shortcut
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_shortcut_array.rst

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst

Include Recipes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_include_in_recipe.rst

Reload Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Accessor Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst


Recipe DSL Methods
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method.rst

attribute?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_attribute.rst

cookbook_name
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_cookbook_name.rst

data_bag, data_bag_item
-----------------------------------------------------
.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_data_bags.rst

The following examples show how the ``data_bag`` and ``data_bag_item`` methods can be used in a recipe.

**Use the contents of a data bag in a recipe**

.. include:: ../../step_resource/step_resource_file_use_data_bag.rst

**Create log entry when the contents of a data bag are used**

.. include:: ../../step_resource/step_resource_log_set_debug.rst

**Use the data_bag_item method with the cookbook_file resource**

.. include:: ../../step_resource/step_resource_cookbook_file_use_data_bag.rst

platform?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform.rst

The following examples show how the ``platform?`` method can be used in a recipe.

**Use an if statement with the platform recipe DSL method**

.. include:: ../../step_resource/step_resource_ruby_block_if_statement_use_with_platform.rst

**Run specific blocks of Ruby code on specific platforms**

.. include:: ../../step_resource/step_resource_ruby_block_run_specific_ruby_blocks_on_specific_platforms.rst

platform_family?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform_family.rst

The following examples show how the ``platform_family?`` method can be used in a recipe.

**Use the platform_family? method**

.. include:: ../../step_resource/step_resource_remote_file_use_platform_family.rst

recipe_name
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_recipe_name.rst

resources
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_resources.rst

search
-----------------------------------------------------
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_search_indexes.rst

The following examples show how the ``search`` method can be used in a recipe.

**Use the search recipe DSL method to find users**

.. include:: ../../step_resource/step_resource_execute_use_search_dsl_method.rst

tag, tagged?, and untag
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_tags.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_tags.rst

value_for_platform
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_value_for_platform.rst

value_for_platform_family
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_value_for_platform_family.rst


Windows Registry Key Methods
=====================================================
.. note:: The recommended order in which registry key-specific methods should be used within a recipe is: ``key_exists?``, ``value_exists?``, ``data_exists?``, ``get_values``, ``has_subkeys?``, and then ``get_subkeys``.

registry_data_exists?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_data_exists.rst

registry_get_subkeys
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_get_subkeys.rst

registry_get_values
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_get_values.rst

registry_has_subkeys?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_has_subkeys.rst

registry_key_exists?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_key_exists.rst

registry_value_exists?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_value_exists.rst



    
  