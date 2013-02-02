=====================================================
iis Cookbook
=====================================================

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_iis.rst

.. note:: This cookbook is available from |github|: https://github.com/opscode-cookbooks/iis.

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_iis_attributes.rst

Lightweight Resources
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

iis_app
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_attributes.rst

iis_config
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_attributes.rst

iis_module
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_attributes.rst

iis_pool
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_attributes.rst

iis_site
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_attributes.rst

Usage
-----------------------------------------------------
The following sections describe the usage options that are available in this cookbook:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Usage
     - Description
   * - ``default``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_iis_usage_default.rst
   * - ``mod_*``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_iis_usage_mod.rst

Examples
-----------------------------------------------------
.. This is a temporary home for examples for this cookbook.

**Create an application**

.. include:: ../../step_lwrp/step_lwrp_iis_app_create.rst

**Load an array of commands**

.. include:: ../../step_lwrp/step_lwrp_iis_config_load_array_of_commands.rst

**Set up logging**

.. include:: ../../step_lwrp/step_lwrp_iis_config_set_up_logging.rst

**Add a module**

.. include:: ../../step_lwrp/step_lwrp_iis_module_add.rst

**Create an application pool**

.. include:: ../../step_lwrp/step_lwrp_iis_pool_create.rst

**Start a site and map it to a domain**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_domain.rst

**Start a site and map it to a location**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_location.rst

**Stop a site**

.. include:: ../../step_lwrp/step_lwrp_iis_site_stop.rst







