=====================================================
Documentation for |ohai 7|
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_platforms.rst


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

.. warning:: This topic includes descriptions of functionality will be available in an upcoming release for |ohai|.

.. include:: ../../includes_ohai/includes_ohai_custom_plugin.rst

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


Disable Plugins
=====================================================
.. include:: ../../step_ohai/step_ohai_plugin_disable.rst


Run Plugins Separately
=====================================================
.. include:: ../../step_ohai/step_ohai_run_plugin.rst


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
.. include:: ../../step_ohai/step_ohai_show_specific_attributes.rst



|ohai| Settings in |client rb|
=====================================================

.. include:: ../../includes_config/includes_config_rb_ohai.rst

.. include:: ../../includes_config/includes_config_rb_ohai_settings.rst





.. Hide the TOC from this file.  

.. toctree::
   :hidden:

   release_notes
