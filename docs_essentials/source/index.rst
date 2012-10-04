=====================================================
Chef Essentials
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_resources.txt

.. include:: ../../includes/includes_chef.rst

The following diagram shows the relationships between the various components of a |chef| deployment, including the nodes, server, and workstations, and the various elements that work together to provide |chef| the information that it needs to automate the infrastructure in your environment.

.. image:: ../../images/overview_chef_draft.png

.. include:: ../../includes/includes_chef_key_elements.rst

The following sections discuss these elements (and their various sub-components) in more detail:
 
* Nodes
* Workstations
* The Chef Server
* Cookbooks

CUT THE FOLLOWING OUT. BUT KEEP IT IN MIND FOR THE FUTURE.

Basic Workflows (PLACEHOLDER JUST FOR IDEAS FOR NOW):

* Workflow A: Cookbooks
* Workflow B: Setup Workstations
* Workflow C: Setup Server
* Workflow D: Setup Nodes
* Workflow E: Chef Runs >> tying cookbooks + server + nodes together
* Workflow F: Maintaining Nodes

These should be high-level, each with a diagram that is based on the main-diagram. The actual workflow shouldn't be more than a paragraph (with bullets = OK) and should NOT get into the weeds.

H1 -- Nodes -- DONE
=====================================================
.. include:: ../../includes/includes_chef_node.rst

.. include:: ../../includes/includes_chef_node_name.rst

.. include:: ../../includes/includes_chef_node_manage.rst

The following sections discuss these elements (and their various sub-components) in more detail:

* Cloud vs. Physical Nodes
* |chef client|
* The |chef| run
* Ohai

H2 -- Cloud vs. Physical Nodes -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_node_cloud.rst

.. include:: ../../includes/includes_chef_node_physical.rst


H2 -- |chef client| -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_client.rst

H3 -- |ssl| Certificates -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_certificate.rst

**jamescott: someone needs to explain how the security works between the node and the server. I know it uses SSL and that signed headers + private/public keys are used. This (probably) needs to be excised from the Chef Essentials docs and moved into a Chef Security collection of topics. Or something.**

H4 -- Signed Headers -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_security_signed_header_authentication.rst

H4 -- |chef validator| -- DONEish
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_security_chef_validator.rst


H2 -- The |chef| Run -- xxxxx
-----------------------------------------------------
SEE INDEX_NEW. NEEDS UPDATING AND NEW DIAGRAM. IN JAMES' QUEUE.


H2 -- |ohai| -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_ohai.rst

H3 -- Automatic Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_ohai_automatic_attribute.rst

H3 -- |ohai| Attribute List -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following attributes are those which are re-written with each Ohai run, so they should be recognized as being unmodifiable when considering the use of attributes:

.. code-block:: bash

   ohai$ grep -R "provides" -h lib/ohai/plugins|sed 's/^\s*//g'|sed "s/\\\"/\'/g"|sort|uniq|grep ^provides


H2 -- Handlers -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler.rst

H3 -- Handler Properties -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_properties.rst

H3 -- Writing a Handler -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_write.rst

H4 -- Example: Send email when |Chef| run fails: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_handler_write_example_send_email.rst

H3 -- Installing and Configuring a Handler -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_install.rst

H4 -- |lwrp chef handler|: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_handler_install_from_cookbook.rst

H4 -- Manual Install: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_handler_install_manual.rst

H3 -- Distributing Handlers -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_distribute.rst

H3 -- Available Handlers -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_handler_available.rst

H4 -- |opscode|: JsonFile Handler: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_handler_available_jsonfile.rst

H4 --  Community: Open Source Handlers: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_handler_available_community.rst






H1 -- Workstations -- DONE
=====================================================
.. include:: ../../includes/includes_chef_workstation.rst

The following sections discuss these elements (and their various sub-components) in more detail:

* Repository
* Knife
* Ruby

H2 -- Repository -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_repository.rst

H3 -- Directory Structure -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_repository_directory.rst

H4 -- certificates/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_certificates.rst

.. include:: ../../steps/step_repository_certificate_generate.rst

H4 -- .chef/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_chef.rst

H4 -- config/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_config.rst

The |chef| repository uses two configuration files: ``rake.rb`` (required) and ``knife.rb`` (optional):

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - File
     - Description
   * - knife.rb
     - .. include:: ../../includes/includes_config_rb_knife.rst
   * - rake.rb
     - .. include:: ../../includes/includes_config_rb_rake.rst

       .. include:: ../../includes/includes_rake_tasks_included_in_chef_libraries.rst

H4 -- cookbooks/ -- DONE -- THIS IS THE COOKBOOK CACHE!
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_cookbooks.rst

.. include:: ../../steps/step_repository_cookbooks_configure_settings.rst

.. include:: ../../steps/step_repository_cookbooks_create.rst

.. include:: ../../steps/step_repository_cookbooks_download_git.rst

.. include:: ../../steps/step_repository_cookbooks_download_no_git.rst

**jamescott: BELOW IS THE COOKBOOK CACHED DESCRIPTION. COMPARE THIS BELOW TO WHAT IS ABOVE AND INTEGRATE, REWRITE, MAKE NECESSARY CHANGES**

../../includes/includes_chef_node_cookbook_cached.rst

**jamescott: We need to say something about the fact that the cookbooks are uploaded to the Chef server and are then (from there) propagated across nodes when and where required (and cached on each of the nodes, refreshed as required).**

H4 -- data_bags/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_data_bags.rst

.. include:: ../../steps/step_repository_data_bags_add_subdirectory.rst

.. include:: ../../steps/step_repository_data_bags_upload_data_bag_item.rst

H4 -- environments/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_environments.rst

.. include:: ../../steps/step_repository_roles_upload_environment.rst

H4 -- roles/ -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_repository_directory_roles.rst 

.. include:: ../../steps/step_repository_roles_upload_role.rst

H3 -- Create the |chef| Repository -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
There are two ways to create a |chef| repository: 

* Clone the |opscode| repository for |chef| from |github|
* Download the repository as a |tar gz| file and place it into local version source control.

.. note:: |opscode| strongly recommends using some type of version control tool to manage the source code in the |chef| repository. We use |git| for everything, including for cookbooks. If another version source control system is preferred over |git| (such as |svn|, |mercurial|, or |bazaar|) that is just fine.

H4 -- Clone -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../steps/step_repository_create_clone.rst

H4 -- Download -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../steps/step_repository_create_download.rst

H2 -- Knife -- DONE
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife.rst

H3 -- Sub-commands -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_knife_subcommand.rst

H3 -- Plugins -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_knife_plugin.rst

H2 -- Ruby -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_ruby.rst

.. include:: ../../includes/includes_ruby_dsl.rst

H3 -- Just Enough Ruby for Chef -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_ruby_just_enough.rst







H1 -- The Chef Server
=====================================================
.. include:: ../../includes/includes_chef_server.rst

There are three types of |chef| servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_hosted.png
     - .. include:: ../../includes/includes_chef_hosted.rst

       |chef hosted| evolved out of a need for an infrastructure management tool to be built around the notion of API primitives. By using an API to talk to a cloud provider (such as |amazon vpc|, |windows azure|, or |rackspace|), it allows the freedom to think of those primitives as building blocks. |chef hosted| evolved out of this idea. |chef| only needs to know about the desired state, how it should get there, and what the proper functionality of that desired state should be.
   * - .. image:: ../../images/icon_chef_private.png
     - .. include:: ../../includes/includes_chef_private.rst

       |chef private| evolved out of a need for customers to have the same functionality provided by |chef hosted|, but located within the organization's firewall. |chef private| is the same as |chef hosted|. |chef hosted| is the largest |chef private| deployment in the world.
   * - NEED IMAGE FOR CHEF OPEN SERVER
     - .. include:: ../../includes/includes_chef_open_source.rst

       |chef open server| is an open source version of the |chef server| that contains much of the same functionality as either |chef hosted| or |chef private|, but does not include support directly from |opscode|. **jamescott: AND?????**


H2 -- Policy
-----------------------------------------------------
MAYBE JUST PUT THIS IN THE INTRO SECTION OF THE CHEF SERVER? ENVIRONMENTS, DATA BAGS, AND ROLES DON'T HAVE TO BE A SUBSET OF A HEADER NAMED POLICY TO HAVE AN EFFECTIVE SET OF TOPICS ABOUT. PARAGRAPH INCLUDED FOR NOW.

.. include:: ../../includes/includes_chef_policy.rst

H2 -- Environments -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_environment.rst

H3 -- The _default Environment -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_environment_default.rst

H3 -- Environment Formats -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_environment_format.rst

H4 -- Ruby DSL -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_ruby_dsl.rst

.. include:: ../../includes/includes_chef_environment_format_ruby.rst

H4 -- JSON -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_format_json.rst

H3 -- Environment Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_environment_attribute.rst

H4 -- Types -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_type.rst

H4 -- Precedence vs. Priority (PICK A WORD!) -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_precedence.rst

H4 -- Persistence -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_persistence.rst

H4 -- Automatic Attributes -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_automatic.rst

H4 -- Notation -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_notation.rst

H3 -- Create Environments -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_environment_create.rst

H3 -- Manage Environments -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_environment_manage.rst

H4 -- Save Environment Data in a Data Bag -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_manage_save_in_data_bag.rst

H4 -- Override Environment Attributes in Roles - DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_manage_override_in_roles.rst

H4 -- Set the Environment for a Node -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_manage_set_on_node.rst

H4 -- Move Nodes Between Environments -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_manage_move_nodes_between.rst

H4 -- Set Per-environment Run-lists in Roles -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment_manage_per_environment_run_lists.rst

H4 -- Searching Environments -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_environment.rst


H2 -- Data Bags
-----------------------------------------------------
.. include:: ../../includes/includes_chef_data_bag.rst

H3 -- Storing Data Bags -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_store.rst

H4 -- Directory Structure -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_directory_structure.rst

H4 -- Data Bag Items -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_item.rst

H3 -- Create Data Bags -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_create.rst

H4 -- Using Knife -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_create_knife.rst

H4 -- Manually -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_create_manual.rst

H3 -- Encrypting Data Bags -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_encryption.rst

H4 -- Knife Options for Encryption -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_knife_options.rst

H4 -- Scenario: Create an encrypted data bag item -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_encrypt.rst

H4 -- Scenario: Verify that a data bag item is encrypted -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_verify.rst

H4 -- Scenario: Decrypt an encrypted data bag item -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_decrypt.rst

H4 -- Scenario: Storing encryption keys on nodes -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_store_on_nodes.rst

H4 -- Example -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_encryption_example.rst

H3 -- Use Data Bags in Recipes -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_recipes.rst

H4 -- Scenario: Loading a Data Bag Item using the Recipe DSL -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_recipes_load_using_recipe_dsl.rst

H4 -- Scenario: Creating and Editing Data Bag within a Recipe -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_recipes_edit_within_recipe.rst

H4 -- Scenario: Access Encrypted Data from a Recipe -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_recipes_access_encrypted_data.rst

H4 -- Scenario: Create a user for each item in a data bag -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_recipes_create_users.rst

H3 -- Using Search -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_search.rst

H4 -- Search Syntax -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_search_syntax.rst

H4 -- Accessing Data Bags using Search Indexes -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_search_indexes.rst

H4 -- Example -- DONE?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag_search_example.rst

H3 -- Use Data Bags with Environments -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_environments.rst

H3 -- Use Data Bags with |chef solo| -- DONE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag_chef_solo.rst


H2 -- Roles -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_role.rst

H3 -- Role Formats -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_role_formats.rst

H4 -- Ruby DSL -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_ruby_dsl.rst

.. include:: ../../includes/includes_chef_role_formats_ruby.rst

H4 -- JSON -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_role_formats_json.rst

H3 -- Role Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_role_attribute.rst

H4 -- Types -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_type.rst

H4 -- Precedence vs. Priority (PICK A WORD!) -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_precedence.rst

H4 -- Persistence -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_persistence.rst

H4 -- Automatic Attributes -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_automatic.rst

H4 -- Notation -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_notation.rst

H3 -- Manage Roles -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_role_manage.rst

Deleting Environments from a Role's Run-list -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_role_manage_delete.rst


H2 -- Node Objects
-----------------------------------------------------
.. include:: ../../includes/includes_chef_node_object.rst

H3 -- Node Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute.rst

Attributes may be set on a node from the following objects:

* Cookbooks
* Environments
* Roles
* Nodes

**jamescott: need to make sure that each of cookbooks, environments, roles, and nodes has a section that explains the "how to set the attributes" part of this story. The five sections below should be NEUTRAL to all locations. AND THEN WHEN THEY ARE, remove them from here?**

**BELOW NEEDS REWRITE**

Setting Node Attributes

Node attributes can be set in recipes. This use of node attributes should do done when you want to calculate a derived value, or store some data on the node that should be persisted the next time Chef runs. Use the "set" method on the node.:

   node.set['some_attribute'] = "Some Value" + "Some other value"
   node.set['some_attribute']['sub_attribute'] = "Sub attribute Value"

Attributes are applied in precedence order; node attributes are automatic and have the highest precedence. As these automatic attributes will be re-written with each Ohai run - Chef doesn't provide any way to modify them. See Setting Attributes for more detail on the attribute types and precedences.

**ABOVE NEEDS REWRITE**

H4 -- Attribute Types -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_type.rst

H4 -- Attribute Precedence -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_precedence.rst

H4 -- Attribute Persistence -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_persistence.rst

H4 -- Automatic Attributes -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_automatic.rst

H4 -- Attribute Notation -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_notation.rst

H3 -- Deep Merging of Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_deep_merge.rst

The following sections show how the logic works for using deep merge to perform substitutions and additions of attributes.

H4 -- Substitution -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_deep_merge_substitute.rst

H4 -- Addition -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_deep_merge_add.rst


H3 -- Run-lists
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_run_list.rst

.. include:: ../../includes/includes_chef_cookbook_recipe.rst

.. include:: ../../includes/includes_chef_role.rst

H4 -- xxxxx
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
xxxxx



H2 -- Search -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_search.rst

Many of the examples in this section use |knife|, but the search indexes and search query syntax can be used in many locations, including recipes, xxxxx, xxxxx, and xxxxx. 

**jamescott: This article needs to evolve into being the definitive topic on search. including: What is search? What can be searched? How do you search? Where can search queries be located?**

H3 -- Search Indexes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_index.rst

H3 -- Search Query Syntax -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_query_syntax.rst

H3 -- Keys (or Field Names) -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_key.rst

.. include:: ../../steps/step_search_key_name.rst

.. include:: ../../steps/step_search_key_wildcard_question_mark.rst

.. include:: ../../steps/step_search_key_wildcard_asterisk.rst

Nested Fields:

.. include:: ../../includes/includes_chef_search_key_nested.rst

.. include:: ../../steps/step_search_key_nested_starting_with.rst

.. include:: ../../steps/step_search_key_nested_range.rst

H3 -- Search Patterns -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_pattern.rst

H4 -- Exact Matching -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_pattern_exact.rst

.. include:: ../../steps/step_search_pattern_exact_key_and_item.rst

.. include:: ../../steps/step_search_pattern_exact_key_and_item_string.rst

H4 -- Wildcard Matching -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_pattern_wildcard.rst

.. include:: ../../steps/step_search_pattern_wildcard_any_node.rst

.. include:: ../../steps/step_search_pattern_wildcard_node_contains.rst

H4 -- Range Matching -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_pattern_range.rst

.. include:: ../../steps/step_search_pattern_range_in_between.rst

.. include:: ../../steps/step_search_pattern_range_exclusive.rst

H4 -- Fuzzy Matching -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_pattern_fuzzy.rst

.. include:: ../../steps/step_search_pattern_fuzzy.rst

H3 -- Boolean Operators -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_boolean_operators.rst

.. include:: ../../steps/step_search_boolean_not.rst

.. include:: ../../steps/step_search_boolean_or.rst

.. include:: ../../steps/step_search_boolean_and.rst

H3 -- Special Characters -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search_special_characters.rst

H3 -- Search Targets -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Searches can be made against roles (in run-lists), nodes, clients, environments, and data bags.

H4 -- Roles in Run-lists: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_role.rst

.. include:: ../../steps/step_search_target_role_top_level.rst

.. include:: ../../steps/step_search_target_role_expanded.rst

H4 -- Nodes: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_search_node.rst

H4 -- Clients: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**jamescott: need to check this for chef-client vs. NODE issues**

.. include:: ../../includes/includes_chef_client.rst

.. include:: ../../includes/includes_chef_search_client.rst

H4 -- Environments: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_environment.rst

.. include:: ../../includes/includes_chef_search_environment.rst

H4 -- Data Bags: -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_data_bag.rst

.. include:: ../../includes/includes_chef_search_data_bag.rst

H2 -- Cookbooks (Uploaded) -- PLACEHOLDER
-----------------------------------------------------
../../includes/includes_chef_node_cookbook_cached.rst

**jamescott: We need to say something about the fact that the cookbooks are uploaded to the Chef server and are then (from there) propagated across nodes when and where required (and cached on each of the nodes, refreshed as required).**

THIS IS THE TOPIC THAT NEEDS TO BE ABOUT THE FOLLOWING:

* HOW COOKBOOKS GET TO THE SERVER
* WHAT HAPPENS TO COOKBOOKS ONCE THEY ARE THERE
* ETC.


H2 -- Manager (Management Console) -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_manager.rst

**jamescott: My understanding is that the Chef 11 UI may be different and that I am going to wait until I see it to re-do that specific part of the helpz.**








H1 -- Cookbooks
=====================================================
.. include:: ../../includes/includes_chef_cookbook.rst

.. note:: A cookbook includes a readme file that is used to xxxxx.


H2 -- Cookbooks Directory Structure -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_repository_directory_cookbooks.rst


H2 -- Cookbook Attributes -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_attribute.rst

H3 -- When to Use Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_attribute_when_to_use.rst

H4 -- NODE, ENVIRONMENT, ROLE, and ATTRIBUTE FILE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
NO TOPIC, BUT CONSIDER THIS.

Types -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_type.rst

Precedence vs. Priority (PICK A WORD!) -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_precedence.rst

Persistence -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_persistence.rst

Automatic Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_automatic.rst

Notation -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_node_attribute_notation.rst

H3 -- Attribute Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_attribute_file.rst

H4 -- Attribute File Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_methods.rst

H4 -- Cookbook Attribute File Ordering
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_ordering.rst

H4 -- Attribute Accessor Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_methods_accessor.rst

H4 -- Reloading Attribute Files From Recipes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_reload_from_recipe.rst



H2 -- Definitions -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_definition.rst

H3 -- Definition Syntax -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_definition_syntax.rst

H3 -- Scenario: Create a new resource -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_definition_scenario_create_resource.rst

H3 -- Scenario: Many recipes, one definition -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_definition_scenario_many_recipes_one_definition.rst

H3 -- Scenario: Virtual hosts -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_definition_scenario_virtaul_hosts.rst

H2 -- File Distributions -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_file_distribution.rst

H3 -- Syntax(?) -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_file_distribution_syntax.rst

H3 -- File Specificity -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_file_distribution_file_specificity.rst

H3 -- Host Notation -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_file_distribution_host_notation.rst

H3 -- File Transfers -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_file_distribution_file_transfers.rst

H2 -- Libraries -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_library.rst

A library can be used to:

* Access attributes that are stored in files
* Do basic programming techniques, such as a loop 
* Create a custom namespace that can be called directly from any |chef| recipe (which also helps keep the ``Chef::Recipe`` namespace clean)
* Connect to a database
* Talk to an LDAP provider
* Do anything that can be done with |ruby|

H3 -- Library Syntax -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_library_syntax.rst

H3 -- Scenario: Attributes stored in file -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_store_attributes_in_file.rst

H3 -- Scenario: Loop over customer records -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_loop_over_records.rst

H3 -- Scenario: Creating a namespace -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_cookbooks_library_create_namespace.rst





H2 -- Lightweight Resources and Providers -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_lightweight.rst

H3 -- File Locations -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_lightweight_file_locations.rst

H3 -- Lightweight Resources -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource.rst

H4 -- Common Functionality for all Lightweight Resources -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The attributes and actions in this section apply to all lightweight resources.

H5 -- Actions -- DONE, NEEDS TO BE H5
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_resource_common_actions.rst

H5 -- Attributes -- DONE, NEEDS TO BE H5
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_resource_common_attributes.rst

H5 -- Conditional Execution -- DONE, NEEDS TO BE H5
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_attributes.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_arguments.rst

H5 -- Notifications -- DONE, NEEDS TO BE H5
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_timers.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_notifies.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_subscribes.rst

H5 -- Relative Paths -- DONE, NEEDS TO BE H5
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_resource_common_relative_paths.rst

H4 -- Actions -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource_actions.rst

H4 -- Attributes and Validation Parameters -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource_attributes.rst

.. include:: ../../includes/includes_chef_cookbook_resource_common_validation_parameters.rst

H4 -- Syntax -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource_syntax.rst

H4 -- Compare Platform and Lightweight Resources -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource_compared_to_platform_resource.rst

H4 -- Use a Default Provider -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_resource_use_default_provider.rst

H3 -- Lightweight Providers -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_lightweight_provider.rst

H4 -- Actions -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_provider_actions.rst

H4 -- Extending Providers -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_lightweight_provider_extend.rst

H3 -- Example: Create Lightweight Provider and Resource -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_lightweight_example.rst




H2 -- Metadata -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_metadata.rst

.. note:: **jamescott: remove this? find out if this is true. for the most part it's best to not refer too much to future functionality that does not yet exist, at least not from within the "core documentation" -- if we want to talk about this stuff, use dedicated topics.** In the future, metadata will be used as part of an automated system for discovering and installing cookbooks.

H3 -- |metadata rb| -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_config_rb_metadata.rst

H3 -- Error Messages -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_metadata_error_messages.rst





H2 -- Recipes -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_recipe.rst

H3 -- Apply Recipes to Run-lists -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_apply_to_run_lists.rst

H3 -- Include Recipes in Recipes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_include_in_recipe.rst

H3 -- Cookbook Dependencies -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_cookbook_dependencies.rst



H3 -- Recipe Attributes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_attribute.rst

H4 -- Types -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_type.rst

H4 -- Precedence vs. Priority (PICK A WORD!) -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_precedence.rst

H4 -- Persistence -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_persistence.rst

H4 -- Automatic Attributes -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_automatic.rst

H4 -- Notation -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_node_attribute_notation.rst

H4 -- Attribute Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_methods.rst

H4 -- Reloading Attributes From Recipes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_attribute_file_reload_from_recipe.rst

.. include:: ../../includes/includes_chef_cookbook_attribute_file_methods_accessor.rst

H3 -- Search Indexes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_search.rst

.. include:: ../../includes/includes_chef_cookbook_recipe_search_indexes.rst

H3 -- Data Bags -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_data_bag.rst

.. include:: ../../includes/includes_chef_cookbook_recipe_data_bags.rst

H3 -- Other Recipe DSL Methods -- DONE, DEPRECATE?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_dsl.rst

H3 -- Tags -- DONE, BUT WEAK
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_tags.rst

.. include:: ../../includes/includes_chef_cookbook_recipe_tags.rst

H3 -- |ruby| in Recipes -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_use_ruby.rst

.. include:: ../../steps/step_chef_recipe_assign_value_to_variable.rst

.. include:: ../../steps/step_chef_recipe_case_statement.rst

.. include:: ../../steps/step_chef_recipe_check_for_condition.rst

.. include:: ../../steps/step_chef_recipe_execute_expression_by_condition.rst

.. include:: ../../steps/step_chef_recipe_loop_over_array_of_package_names.rst

.. include:: ../../steps/step_chef_recipe_loop_over_hash_of_package_names.rst

H3 -- Exceptions and Logging -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_recipe_exceptions_and_logging.rst





H2 - Resources and Providers -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource.rst

.. include:: ../../includes/includes_chef_cookbook_provider.rst

H3 -- Resources Syntax -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_syntax.rst

H3 -- Platform Resources -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following resources are built into |chef|:

.. list-table::
   :widths: 120 400
   :header-rows: 1

   * - Resource
     - Description
   * - |resource cookbook file|
     - .. include:: ../../includes_resources/includes_resource_cookbook_file.rst
   * - |resource cron|
     - .. include:: ../../includes_resources/includes_resource_cron.rst
   * - |resource deploy|
     - .. include:: ../../includes_resources/includes_resource_deploy.rst
   * - |resource directory|
     - .. include:: ../../includes_resources/includes_resource_directory.rst
   * - |resource env|
     - .. include:: ../../includes_resources/includes_resource_env.rst
   * - |resource erlang call|
     - .. include:: ../../includes_resources/includes_resource_erlang_call.rst
   * - |resource execute|
     - .. include:: ../../includes_resources/includes_resource_execute.rst
   * - |resource file|
     - .. include:: ../../includes_resources/includes_resource_file.rst
   * - |resource group|
     - .. include:: ../../includes_resources/includes_resource_group.rst
   * - |resource http request|
     - .. include:: ../../includes_resources/includes_resource_http_request.rst
   * - |resource ifconfig|
     - .. include:: ../../includes_resources/includes_resource_ifconfig.rst
   * - |resource link|
     - .. include:: ../../includes_resources/includes_resource_link.rst
   * - |resource log|
     - .. include:: ../../includes_resources/includes_resource_log.rst
   * - |resource mdadm|
     - .. include:: ../../includes_resources/includes_resource_mdadm.rst
   * - |resource mount|
     - .. include:: ../../includes_resources/includes_resource_mount.rst
   * - |resource ohai|
     - .. include:: ../../includes_resources/includes_resource_ohai.rst
   * - |resource package|
     - .. include:: ../../includes_resources/includes_resource_package.rst       
   * - |resource powershell script|
     - .. include:: ../../includes_resources/includes_resource_powershell_script.rst
   * - |resource remote directory|
     - .. include:: ../../includes_resources/includes_resource_directory.rst
   * - |resource remote file|
     - .. include:: ../../includes_resources/includes_resource_remote_file.rst
   * - |resource route|
     - .. include:: ../../includes_resources/includes_resource_route.rst
   * - |resource ruby block|
     - .. include:: ../../includes_resources/includes_resource_ruby_block.rst
   * - |resource scm|
     - .. include:: ../../includes_resources/includes_resource_scm.rst
   * - |resource script|
     - .. include:: ../../includes_resources/includes_resource_script.rst
   * - |resource service|
     - .. include:: ../../includes_resources/includes_resource_service.rst
   * - |resource template|
     - .. include:: ../../includes_resources/includes_resource_template.rst
   * - |resource user|
     - .. include:: ../../includes_resources/includes_resource_user.rst
   * - |resource yum package|
     - .. include:: ../../includes_resources/includes_resource_yum.rst

H3 -- Platform Providers -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_provider_platform.rst



H2 -- Templates -- DONE
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_template.rst

.. note:: |chef| uses |erubis| for templates, which is a fast, secure, and extensible implementation of embedded |ruby|. |erubis| should be familiar to members of the |ruby on rails|, |merb|, or |puppet| communities. For more information about |erubis|, see: http://www.kuwata-lab.com/erubis/.

H3 -- Requirements -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_template_requirements.rst

H3 -- Variables -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_template_variables.rst

H3 -- Location Specificity -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_template_location_specificity.rst

H3 -- Host Notation -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_template_host_notation.rst

H3 -- Transfer Frequency -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_template_transfer_frequency.rst

H3 -- Versions -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version.rst

.. include:: ../../includes/includes_chef_cookbook_version.rst

H3 -- Syntax -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_syntax.rst

H3 -- Operators -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_operators.rst

H3 -- Version Constraints -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_constraints.rst

H3 -- Metadata (in metadata.rb) -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_metadata.rst

.. include:: ../../includes/includes_chef_cookbook_version_metadata.rst

H3 -- Environments -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_environments.rst

H3 -- Run-list Items -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_run_list_items.rst

H4 -- Freezing Versions -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_version_freezing.rst

H3 -- Version Control Strategies -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_version_control_strategies.rst

H4 -- Branch Tracking -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_version_control_strategies_branch.rst

H4 -- Maximum Version Control -- DONE
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes/includes_chef_cookbook_version_control_strategies_maximum.rst

