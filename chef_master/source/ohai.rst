=====================================================
About |ohai|
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_platforms.rst

.. warning:: `Ohai 7 <http://docs.opscode.com/release/ohai-7/>`_ is planned to be fully integrated into the |chef client| starting with the 11.12.0 release (~April 2014). The current version is `Ohai 6 <http://docs.opscode.com/release/ohai-6/>`_.

Automatic Attributes
=====================================================
.. include:: ../../includes_ohai/includes_ohai_automatic_attribute.rst

**Get a list of automatic attributes for a node**

.. include:: ../../includes_ohai/includes_ohai_attribute_list.rst

.. note:: |note see_attributes_overview|

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Custom Plugins
=====================================================
.. include:: ../../includes_ohai/includes_ohai_custom_plugin.rst

.. warning:: The syntax for custom plugins changes significantly between |ohai 6| and |ohai 7|. This page is about |ohai 7| plugins and `this page is about Ohai 6 plugins <http://docs.opscode.com/release/ohai-6/>`_). While |company_name| has worked to ensure backwards compatibility for all plugins in |ohai 7|, a plan should be put in place to update the syntax for all |ohai 6| plugins so they are using the |ohai 7| pattern. Once updated, please test and verify those plugins before running them in a production environment.

Syntax
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_syntax.rst

|dsl ohai| Methods
-----------------------------------------------------
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai.rst

collect_data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data.rst

Use a Mash
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data_mash.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_collect_data_example.rst

require
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_require.rst

/common Directory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_require_common.rst

Shared Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_ohai/includes_dsl_ohai_method_shared_methods.rst

Log Entries
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_logs.rst

rescue
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_logs_rescue.rst

Examples 
-----------------------------------------------------
The following examples show different ways of building |ohai| plugins.

``collect_data`` Blocks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_example_multiple_collect_data_blocks.rst

Use a ``mixin`` Library
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_example_use_mixin_library.rst

Get Kernel Values
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_example_kernels.rst

|ohai 6| vs. |ohai 7| Plugins
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai_migrate_plugins_6_to_7.rst

ohai Resource
=====================================================
.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_ohai.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai_syntax.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai_attributes.rst

Providers
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai_providers.rst

Examples
-----------------------------------------------------
|generic resource statement|

**Reload Ohai**

.. include:: ../../step_resource/step_resource_ohai_reload.rst

**Reload Ohai after a new user is created**

.. include:: ../../step_resource/step_resource_ohai_reload_after_create_user.rst


ohai Cookbook
=====================================================
.. include:: ../../step_ohai/step_ohai_download_cookbook.rst

Default Location
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_plugin_change_path.rst

Upload Custom Plugins
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_plugin_upload.rst

Add |ohai| to a Run-list
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_add_to_run_list.rst


ohai Command Line Tool
=====================================================
.. include:: ../../includes_ctl_ohai/includes_ctl_ohai.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_ohai/includes_ctl_ohai_options.rst

Examples
-----------------------------------------------------
The following examples show how to use the |ohai| command-line tool:

**Run a plugin independently of a chef-client run**

.. include:: ../../step_ohai/step_ohai_run_plugin.rst


|ohai| Settings in |client rb|
=====================================================

.. include:: ../../includes_config/includes_config_rb_ohai.rst

.. include:: ../../includes_config/includes_config_rb_ohai_settings.rst