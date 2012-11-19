=====================================================
Chef Essentials
=====================================================
 
.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

.. include:: ../../includes_chef/includes_chef.rst

The following diagram shows the relationships between the various components of a |chef| deployment, including the nodes, server, and workstations, and the various elements that work together to provide |chef| the information that it needs to automate the infrastructure in your environment.

.. image:: ../../images/overview_chef_draft.png

.. include:: ../../includes_chef/includes_chef_key_elements.rst

The following sections discuss these elements (and their various sub-components) in more detail:
 
* Nodes
* Workstations
* The Chef Server
* Cookbooks

Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

.. include:: ../../includes_node/includes_node_name.rst

.. include:: ../../includes_node/includes_node_manage.rst

The following sections discuss these elements (and their various sub-components) in more detail:

* Cloud vs. Physical Nodes
* |chef client|
* The |chef| run
* Ohai

Cloud vs. Physical Nodes
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_cloud.rst

.. include:: ../../includes_node/includes_node_physical.rst


|chef client|
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_client.rst

|chef validator|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_security/includes_security_chef_validator.rst

|ssl| Certificates
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_certificate.rst

Signed Header Authentication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_security/includes_security_signed_header_authentication.rst




The |chef| Run
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_client_run.rst


|ohai|
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai.rst

Automatic Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_automatic_attribute.rst

|ohai| Attribute List
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_attribute_list.rst


Exception and Report Handlers
-----------------------------------------------------
.. include:: ../../includes_handler/includes_handler.rst

Handler Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/includes_handler_properties.rst

Writing a Handler
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/includes_handler_write.rst

Example: Send email when the |Chef| run fails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_handler/includes_handler_write_example_send_email.rst

Installing and Configuring a Handler
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/includes_handler_install.rst

|lwrp chef handler|
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_handler/includes_handler_install_from_cookbook.rst

Manual Install
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_handler/includes_handler_install_manual.rst

Distributing Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/includes_handler_distribute.rst

Available Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_handler/includes_handler_available.rst

|opscode|: JsonFile Handler
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_handler/includes_handler_available_jsonfile.rst

Community: Open Source Handlers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_handler/includes_handler_available_community.rst






Workstations
=====================================================
.. include:: ../../includes_workstation/includes_workstation.rst

The following sections discuss these elements (and their various sub-components) in more detail:

* Repository
* Knife
* Ruby

Repository
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository.rst

Directory Structure
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_repository/includes_repository_directory.rst

.. include:: ../../includes_repository/includes_repository_directory_structure.rst

certificates/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_certificates.rst

.. include:: ../../steps/step_repository_certificate_generate.rst

.chef/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_chef.rst

config/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_config.rst

The |chef| repository uses two configuration files: ``rake.rb`` (required) and ``knife.rb`` (optional):

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - File
     - Description
   * - knife.rb
     - .. include:: ../../includes_config/includes_config_rb_knife.rst
   * - rake.rb
     - .. include:: ../../includes_config/includes_config_rb_rake.rst

       .. include:: ../../includes_chef/includes_rake_tasks_included_in_chef_libraries.rst

cookbooks/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_cookbooks.rst

.. include:: ../../steps/step_repository_cookbooks_configure_settings.rst

.. include:: ../../steps/step_repository_cookbooks_create.rst

.. include:: ../../steps/step_repository_cookbooks_download_git.rst

.. include:: ../../steps/step_repository_cookbooks_download_no_git.rst

data_bags/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_data_bags.rst

.. include:: ../../steps/step_repository_data_bags_add_subdirectory.rst

.. include:: ../../steps/step_repository_data_bags_upload_data_bag_item.rst

environments/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_environments.rst

.. include:: ../../steps/step_repository_roles_upload_environment.rst

roles/
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_repository/includes_repository_directory_roles.rst 

.. include:: ../../steps/step_repository_roles_upload_role.rst

Create the |chef| Repository
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_repository/includes_repository_create.rst

Clone
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../steps/step_repository_create_clone.rst

Download
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../steps/step_repository_create_download.rst


Knife
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife.rst

Sub-commands
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_subcommand.rst

Plugins
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_plugin.rst

.. include:: ../../includes_knife/includes_knife_using_plugins.rst


Just Enough Ruby for Chef
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby.rst

.. include:: ../../includes_ruby/includes_ruby_dsl.rst

.. include:: ../../includes_ruby/includes_ruby_just_enough.rst







The Chef Server
=====================================================
.. include:: ../../includes_chef/includes_chef_server.rst

There are three types of |chef| servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_hosted.png
     - .. include:: ../../includes_chef/includes_chef_hosted.rst

       |chef hosted| evolved out of a need for an infrastructure management tool to be built around the notion of API primitives. By using an API to talk to a cloud provider (such as |amazon vpc|, |windows azure|, or |rackspace|), it allows the freedom to think of those primitives as building blocks. |chef hosted| evolved out of this idea. |chef| only needs to know about the desired state, how it should get there, and what the proper functionality of that desired state should be.
   * - .. image:: ../../images/icon_chef_private.png
     - .. include:: ../../includes_chef/includes_chef_private.rst

       |chef private| evolved out of a need for customers to have the same functionality provided by |chef hosted|, but located within the organization's firewall. |chef private| is the same as |chef hosted|. |chef hosted| is the largest |chef private| deployment in the world.
   * - 
     - .. include:: ../../includes_chef/includes_chef_open_source.rst

Policy
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_policy.rst

Environments
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment.rst

The _default Environment
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_environment/includes_environment_default.rst

Environment Data Formats
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_environment/includes_environment_format.rst

Ruby DSL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_ruby/includes_ruby_dsl.rst

.. include:: ../../includes_environment/includes_environment_format_ruby.rst

JSON
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_format_json.rst

Environment Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_environment/includes_environment_attribute.rst

Types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_attribute_type.rst

Precedence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Persistence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Automatic Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_automatic.rst

Notation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_notation.rst

Create Environments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_environment/includes_environment_create.rst

Manage Environments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_environment/includes_environment_manage.rst

Save Environment Data in a Data Bag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_manage_save_in_data_bag.rst

Override Environment Attributes in Roles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_manage_override_in_roles.rst

Set the Environment for a Node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_manage_set_on_node.rst

Move Nodes Between Environments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_manage_move_nodes_between.rst

Set Per-environment Run-lists in Roles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment_manage_per_environment_run_lists.rst

Searching Environments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_environment.rst


Data Bags
-----------------------------------------------------
.. include:: ../../includes_data_bag/includes_data_bag.rst

Storing Data Bags
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_store.rst

Directory Structure
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_directory_structure.rst

Data Bag Items
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_item.rst

Create Data Bags
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_create.rst

Using Knife
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_create_knife.rst

Manually
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_create_manual.rst

Encrypting Data Bags
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_encryption.rst

Knife Options for Encryption
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_knife_options.rst

Scenario: Create an encrypted data bag item
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_encrypt.rst

Scenario: Verify that a data bag item is encrypted
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_verify.rst

Scenario: Decrypt an encrypted data bag item
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_decrypt.rst

Scenario: Storing encryption keys on nodes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_store_on_nodes.rst

Example
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_encryption_example.rst

Use Data Bags in Recipes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_recipes.rst

Scenario: Loading a Data Bag Item using the Recipe DSL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_recipes_load_using_recipe_dsl.rst

Scenario: Creating and Editing Data Bag within a Recipe
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_recipes_edit_within_recipe.rst

Scenario: Access Encrypted Data from a Recipe
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_recipes_access_encrypted_data.rst

Scenario: Create a user for each item in a data bag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_recipes_create_users.rst

Using Search
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_search.rst

Search Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_search_syntax.rst

Accessing Data Bags Using Search Indexes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_search_indexes.rst

Example
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag_search_example.rst

Use Data Bags with Environments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_environments.rst

Use Data Bags with |chef solo|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_chef_solo.rst


Roles
-----------------------------------------------------
.. include:: ../../includes_role/includes_role.rst

Role Data Formats
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_role/includes_role_formats.rst

Ruby DSL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_ruby/includes_ruby_dsl.rst

.. include:: ../../includes_role/includes_role_formats_ruby.rst

JSON
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_role/includes_role_formats_json.rst

Role Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_role/includes_role_attribute.rst

Types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_role/includes_role_attribute_type.rst

Precedence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Persistence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Automatic Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_automatic.rst

Notation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_notation.rst

Manage Roles
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_role/includes_role_manage.rst

Deleting Environments from a Role's Run-list
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_role/includes_role_manage_delete.rst


Node Objects
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_object.rst

Node Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute.rst

.. include:: ../../includes_node/includes_node_object_set.rst

Attribute Types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_type.rst

Attribute Precedence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Attribute Persistence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Automatic Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_automatic.rst

Attribute Notation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_notation.rst

Deep Merging of Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_deep_merge.rst

The following sections show how the logic works for using deep merge to perform substitutions and additions of attributes.

Substitution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_deep_merge_substitute.rst

Addition
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_deep_merge_add.rst

Run-lists
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_run_list.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst

.. include:: ../../includes_role/includes_role.rst




Search
-----------------------------------------------------
.. include:: ../../includes_search/includes_search.rst

Many of the examples in this section use |knife|, but the search indexes and search query syntax can be used in many locations, including from within recipes and when using the |api chef server|.

Search Indexes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_index.rst

Using Knife to Search
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_knife/includes_knife_search.rst

.. include:: ../../includes_knife/includes_knife_search_examples.rst

Search Query Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_query_syntax.rst

Keys (or Field Names)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_key.rst

.. include:: ../../steps/step_search_key_name.rst

.. include:: ../../steps/step_search_key_wildcard_question_mark.rst

.. include:: ../../steps/step_search_key_wildcard_asterisk.rst

Nested Fields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ../../includes_search/includes_search_key_nested.rst

.. include:: ../../steps/step_search_key_nested_starting_with.rst

.. include:: ../../steps/step_search_key_nested_range.rst

Search Patterns
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_pattern.rst

Exact Matching
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_pattern_exact.rst

.. include:: ../../steps/step_search_pattern_exact_key_and_item.rst

.. include:: ../../steps/step_search_pattern_exact_key_and_item_string.rst

Wildcard Matching
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_pattern_wildcard.rst

.. include:: ../../steps/step_search_pattern_wildcard_any_node.rst

.. include:: ../../steps/step_search_pattern_wildcard_node_contains.rst

Range Matching
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_pattern_range.rst

.. include:: ../../steps/step_search_pattern_range_in_between.rst

.. include:: ../../steps/step_search_pattern_range_exclusive.rst

Fuzzy Matching
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_pattern_fuzzy.rst

.. include:: ../../steps/step_search_pattern_fuzzy.rst

Boolean Operators
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_boolean_operators.rst

.. include:: ../../steps/step_search_boolean_not.rst

.. include:: ../../steps/step_search_boolean_or.rst

.. include:: ../../steps/step_search_boolean_and.rst

Special Characters
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_special_characters.rst

Search Targets
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search_targets.rst

Roles in Run-lists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_role.rst

.. include:: ../../steps/step_search_target_role_top_level.rst

.. include:: ../../steps/step_search_target_role_expanded.rst

Nodes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_search/includes_search_node.rst

API Clients
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_chef/includes_chef_api_client.rst

.. include:: ../../includes_search/includes_search_client.rst

Environments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_environment/includes_environment.rst

.. include:: ../../includes_search/includes_search_environment.rst

Data Bags
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_search/includes_search_data_bag.rst


Manager (Management Console)
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_manager.rst









Cookbooks
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks.rst

.. note:: A cookbook includes a readme file.


Cookbooks Directory Structure
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_cookbooks.rst

Cookbook Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file.rst

When to Use Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_when_to_use.rst

Cookbook Attribute File Ordering
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_ordering.rst

Attribute Accessor Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst

Reloading Attribute Files From Recipes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Types
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_type.rst

Precedence
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Persistence
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Automatic Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_automatic.rst

Notation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_notation.rst

Attribute Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods.rst



Definitions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_definition.rst

Definition Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_definition_syntax.rst

Example: Create a new resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_definition_scenario_create_resource.rst

Example: Many recipes, one definition
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_definition_scenario_many_recipes_one_definition.rst

Example: Virtual hosts
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_definition_scenario_virtaul_hosts.rst



File Distributions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_syntax.rst

File Specificity
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_file_specificity.rst

Host Notation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_host_notation.rst

File Transfers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_file_transfers.rst



Libraries
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_library.rst

Using Libraries
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_library_common_uses.rst

Library Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_library_syntax.rst

Example: Attributes stored in file
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_store_attributes_in_file.rst

Example: Loop over customer records
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_loop_over_records.rst

Example: Creating a namespace
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_create_namespace.rst




Lightweight Resources and Providers
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight.rst

File Locations
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Lightweight Resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

Common Functionality for all Lightweight Resources
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The attributes and actions in this section apply to all lightweight resources.

**Actions**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_actions.rst

**Attributes**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_attributes.rst

**Conditional Execution**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_attributes.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_arguments.rst

**Notifications**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_timers.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_notifies.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_subscribes.rst

**Relative Paths**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_relative_paths.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_syntax.rst

**Actions**

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_actions.rst

**Attributes and Validation Parameters**

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_attributes.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_validation_parameters.rst

Compare Platform and Lightweight Resources
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_compared_to_platform_resource.rst

Lightweight Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider_actions.rst

Extending Providers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider_extend.rst

Use a Default Provider
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_use_default_provider.rst

Example: Create Lightweight Provider and Resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_example.rst




Metadata
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_metadata.rst

|metadata rb|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_config/includes_config_rb_metadata.rst

Error Messages
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_metadata_error_messages.rst





Recipes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst

Apply Recipes to Run-lists
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists.rst

|chef server|
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists_chef_server.rst

|chef solo|
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_apply_to_run_lists_chef_solo.rst

Include Recipes in Recipes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_include_in_recipe.rst

Reloading Attributes From Recipes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Accessor Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst

Cookbook Dependencies
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_cookbook_dependencies.rst

Recipe Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_attribute.rst

Types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_type.rst

Precedence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Persistence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Automatic Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_automatic.rst

Notation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_notation.rst

Attribute Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods.rst

Use Search Results in a Recipe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_search_indexes.rst

Use Data Bags in a Recipe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_data_bags.rst

Tags
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef/includes_chef_tags.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_tags.rst

Use |ruby| in Recipes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_use_ruby.rst

.. include:: ../../steps/step_chef_recipe_assign_value_to_variable.rst

.. include:: ../../steps/step_chef_recipe_case_statement.rst

.. include:: ../../steps/step_chef_recipe_check_for_condition.rst

.. include:: ../../steps/step_chef_recipe_execute_expression_by_condition.rst

.. include:: ../../steps/step_chef_recipe_loop_over_array_of_package_names.rst

.. include:: ../../steps/step_chef_recipe_loop_over_hash_of_package_names.rst

Exceptions and Logging
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_exceptions_and_logging.rst





Resources and Providers
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

Resources Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_syntax.rst

Platform Resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following resources are built into |chef|:

.. list-table::
   :widths: 120 400
   :header-rows: 1

   * - Resource
     - Description
   * - |resource cookbook file|
     - |resource desc cookbook_file|
   * - |resource cron|
     - |resource desc cron|
   * - |resource deploy|
     - |resource desc deploy|
   * - |resource directory|
     - |resource desc directory|
   * - |resource env|
     - |resource desc env|
   * - |resource erlang call|
     - |resource desc erlang_call|
   * - |resource execute|
     - |resource desc execute|
   * - |resource file|
     - |resource desc file|
   * - |resource group|
     - |resource desc group|
   * - |resource http request|
     - |resource desc http_request|
   * - |resource ifconfig|
     - |resource desc ifconfig|
   * - |resource link|
     - |resource desc link|
   * - |resource log|
     - |resource desc log|
   * - |resource mdadm|
     - |resource desc mdadm|
   * - |resource mount|
     - |resource desc mount|
   * - |resource ohai|
     - |resource desc ohai|
   * - |resource package|
     - |resource desc package|     
   * - |resource powershell script|
     - |resource desc powershell_script|
   * - |resource remote directory|
     - |resource desc remote_directory|
   * - |resource remote file|
     - |resource desc remote_file|
   * - |resource route|
     - |resource desc route|
   * - |resource ruby block|
     - |resource desc ruby_block|
   * - |resource scm|
     - |resource desc scm|
   * - |resource script|
     - |resource desc script|
   * - |resource service|
     - |resource desc service|
   * - |resource template|
     - |resource desc template|
   * - |resource user|
     - |resource desc user|
   * - |resource yum package|
     - |resource desc yum|

Platform Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_provider_platform.rst



Templates
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_template.rst

.. note:: |note cookbook template erubis|

Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_requirements.rst

Variables
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_variables.rst

Location Specificity
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_location_specificity.rst

Host Notation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_host_notation.rst

Transfer Frequency
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_transfer_frequency.rst



Versions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_version.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_syntax.rst

Operators
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_operators.rst

Version Constraints
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_constraints.rst

Metadata (in metadata.rb)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_metadata.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_version_metadata.rst

Environments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_environments.rst

Run-list Items
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_run_list_items.rst

Freezing Versions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_freezing.rst

Version Control Strategies
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_version_control_strategies.rst

Branch Tracking
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_version_control_strategies_branch.rst

Maximum Version Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_version_control_strategies_maximum.rst

