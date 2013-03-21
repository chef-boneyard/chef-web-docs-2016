=====================================================
ruby_block
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_ruby_block.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_ruby_block_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_ruby_block_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_ruby_block_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_ruby_block_providers.rst

Examples
=====================================================
|generic resource statement|

**Re-read configuration data**

.. include:: ../../step_resource/step_resource_ruby_block_reread_chef_client.rst

**Install repositories from a file, trigger a command, and force the internal cache to reload**

.. include:: ../../step_resource/step_resource_yum_package_install_yum_repo_from_file.rst

**Use an if statement with the platform recipe DSL method**

.. include:: ../../step_resource/step_resource_ruby_block_if_statement_use_with_platform.rst

**Stash a file in a data bag**

.. include:: ../../step_resource/step_resource_ruby_block_stash_file_in_data_bag.rst

**Update the /etc/hosts file**

.. include:: ../../step_resource/step_resource_ruby_block_update_etc_host.rst

**Set environment variables**

.. include:: ../../step_resource/step_resource_ruby_block_use_variables_to_set_env_variables.rst

**Set JAVA_HOME**

.. include:: ../../step_resource/step_resource_ruby_block_use_variables_to_set_java_home.rst

**Run specific blocks of Ruby code on specific platforms**

.. include:: ../../step_resource/step_resource_ruby_block_run_specific_ruby_blocks_on_specific_platforms.rst

**Reload the configuration**

.. include:: ../../step_resource/step_resource_ruby_block_reload_configuration.rst