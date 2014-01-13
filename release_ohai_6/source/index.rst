=====================================================
Documentation for |ohai 6|
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_platforms.rst

View the :doc:`release notes </release_notes>` for |ohai 6|.

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

Install |ohai 6|
=====================================================
|ohai 6| can be installed in the following ways:

Install from Github
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_git.rst

Install from RubyGems
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_rubygem.rst

Install on Microsoft Windows
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_on_windows.rst

Custom |ohai 6| Plugins
=====================================================

.. warning:: Custom plugins change significantly in |ohai 7|. While |company_name| has worked to ensure backwards compatibility for all |ohai| plugins, all plugins designed for |ohai 6| should be updated, tested, and then verified for |ohai 7| to ensure that the desired functionality is available.

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_custom_plugin.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai_custom_plugin_syntax.rst


Load a Plugin
=====================================================
.. include:: ../../step_ohai/step_ohai_plugin_load.rst


Disable a Plugin
=====================================================
.. include:: ../../step_ohai/step_ohai_plugin_disable.rst


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

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ctl_ohai/includes_ctl_ohai.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_ohai/includes_ctl_ohai_6_options.rst


|ohai| Settings in |client rb|
=====================================================

.. include:: ../../includes_config/includes_config_rb_ohai.rst

.. include:: ../../includes_config/includes_config_rb_ohai_6_settings.rst



Community |ohai| Plugins
=====================================================
.. include:: ../../includes_ohai/includes_ohai_6_community_plugins.rst


.. Hide the TOC from this file.  

.. toctree::
   :hidden:

   release_notes
