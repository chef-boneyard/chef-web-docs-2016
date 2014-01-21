=====================================================
chef_handler Resource
=====================================================

|cookbook name chef_handler|

The |cookbook chef_handler| cookbook contains the following resource: ``chef_handler``.

chef_handler
=====================================================
.. include:: ../../includes_handler/includes_handler.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

.. note:: This resource is part of the |cookbook chef_handler| cookbook: https://github.com/opscode-cookbooks/chef_handler.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``chef_handler`` resource:

**Enable the CloudkickHandler handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_cloudkickhandler.rst

**Enable handlers during the compile phase**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_during_compile.rst

**Handle only exceptions**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_exceptions_only.rst

**Register the JsonFile handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_register.rst