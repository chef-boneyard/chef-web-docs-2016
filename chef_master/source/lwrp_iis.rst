=====================================================
iis Lightweight Resources
=====================================================

|cookbook name iis|

The |cookbook iis| cookbook contains the following resources: ``iis_app``, ``iis_config``, ``iis_module``, ``iis_pool``, and ``iis_site``.

.. note:: These resources are part of the |cookbook iis| cookbook: https://github.com/opscode-cookbooks/iis.

iis_app
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_iis_app.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``iis_app`` resource:

**Create an application**

.. include:: ../../step_lwrp/step_lwrp_iis_app_create.rst


iis_config
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_iis_config.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``iis_config`` resource:

**Load an array of commands**

.. include:: ../../step_lwrp/step_lwrp_iis_config_load_array_of_commands.rst

**Set up logging**

.. include:: ../../step_lwrp/step_lwrp_iis_config_set_up_logging.rst

iis_module
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_iis_module.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``iis_module`` resource:

**Add a module**

.. include:: ../../step_lwrp/step_lwrp_iis_module_add.rst


iis_pool
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``iis_pool`` resource:

**Create an application pool**

.. include:: ../../step_lwrp/step_lwrp_iis_pool_create.rst

iis_site
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_iis_site.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``iis_site`` resource:

**Start, then map to domain**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_domain.rst

**Start, then map to location**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_location.rst

**Stop, then delete a site**

.. include:: ../../step_lwrp/step_lwrp_iis_site_stop.rst
