=====================================================
chef_handler Cookbook
=====================================================

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler.rst

.. note:: This cookbook is available from |github|: https://github.com/opscode-cookbooks/chef_handler.

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_attributes.rst

chef_handler LWRP
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Usage
-----------------------------------------------------
The following sections describe the usage options that are available in this cookbook:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Usage
     - Description
   * - ``default``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_default.rst
   * - ``json_file``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_json_file.rst

Examples
-----------------------------------------------------
.. This is a temporary home for examples for this cookbook.

**Register the Chef::Handler::JsonFile handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_register.rst

**Register the Chef::Handler::JsonFile handler during the compile phase**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_during_compile.rst

**Handle exceptions only**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_exceptions_only.rst

**Enable the CloudkickHandler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_cloudkickhandler.rst











