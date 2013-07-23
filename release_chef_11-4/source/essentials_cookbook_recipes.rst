=====================================================
About Recipes
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst

Recipe Attributes
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst

.. note:: Attributes can be configured in cookbooks (attribute files and recipes), roles, and environments. In addition, |ohai| collects attribute data about each node at the start of the |chef| run. See the :doc:`overview of attributes </chef_overview_attributes>` for more information about how all of these attributes fit together.

Attribute Types
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_type.rst

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst


File Methods
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods.rst

Environment Variables
=====================================================
.. include:: ../../includes_environment_variables/includes_environment_variables.rst

.. include:: ../../includes_environment_variables/includes_environment_variables_access_resource_attributes.rst


Work with Recipes
=====================================================
The following sections show approaches to working with recipes.

Use Data Bags
-----------------------------------------------------
.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_data_bags.rst

Secret Keys
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_encryption_secret_key.rst

Store Keys on Nodes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_encryption_store_on_nodes.rst

Assign Dependencies
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_cookbook_dependencies.rst

Create Exceptions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_exceptions_and_logging.rst

Include Recipes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_include_in_recipe.rst

Reload Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Accessor Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst

Use Ruby
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_use_ruby.rst

Assign a value
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_assign_value_to_variable.rst

Use Case Statement
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_case_statement.rst

Check Conditions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_check_for_condition.rst

Execute Conditions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_execute_expression_by_condition.rst

Loop over Array
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_loop_over_array_of_package_names.rst

Loop over Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_recipe_loop_over_hash_of_package_names.rst

Apply to Run-lists
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists.rst

|chef server|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists_chef_server.rst

|chef solo|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists_chef_solo.rst

Use Search Results
-----------------------------------------------------
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_search_indexes.rst

Use Tags
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_tags.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_tags.rst

End a |chef| Run 
-----------------------------------------------------
Sometimes it may be necessary to end a |chef| run before it completes. There are a few ways to do this:

* Using the ``return`` keyword and a condition
* Using the ``raise`` keyword to trigger an unhandled exception
* Using the ``rescue`` block in |ruby| code
* Using ``Chef::Application.fatal!`` to log a fatal message to the |chef| logger and ``STDERR``
* Using an :doc:`exception handler </essentials_handlers>`

The following sections show various approaches to ending a |chef| run.

Return Keyword
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_recipe/step_recipe_end_chef_run_keyword_return.rst

Raise Keyword
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_recipe/step_recipe_end_chef_run_keyword_raise.rst

Rescue Blocks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_recipe/step_recipe_end_chef_run_rescue_block.rst

Send to Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_recipe/step_recipe_end_chef_run_send_fatal_message.rst
