=====================================================
Custom LWRPs
=====================================================

.. include:: ../../includes_lwrp/includes_lwrp.rst

File Locations
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Lightweight Resources
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_lwrp/includes_lwrp_custom_resource.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_resource_syntax.rst

|dsl resource| Methods
-----------------------------------------------------
.. include:: ../../includes_dsl_resource/includes_dsl_resource.rst

action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_action.rst

attribute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_attribute.rst

attr_accessor
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_attr_accessor.rst

default_action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_default_action.rst

Validation Parameters
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_attribute_validation_parameter.rst

Conditional Executions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional.rst

Conditional Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_attributes.rst

Conditional Arguements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_arguments.rst

Notifications
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_notifies.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_subscribes.rst

Timers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_timers.rst

Examples
-----------------------------------------------------
The following examples show various lightweight providers that use core |chef| resources or how to use certain parts of the |dsl resource|.

:callbacks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_resource_example_callbacks.rst


Lightweight Providers
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

.. include:: ../../includes_lwrp/includes_lwrp_custom_provider.rst

Syntax
-----------------------------------------------------
The following sections describe the syntax for lightweight providers that are built using core |chef| resources or that are built using custom |ruby|.

Use |chef| Resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_syntax.rst

Use |ruby|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_syntax_ruby.rst

|dsl provider| Methods
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider.rst

action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_action.rst

.. note:: The ``converge_by`` method is not included in the previous syntax example because when |whyrun| mode is enabled in a lightweight provider that leverages core |chef| resources, the ``converge_by`` blocks are already defined by the core |chef| resources.

current_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_current_resource.rst

load_current_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_load_current_resource.rst

new_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_new_resource.rst

updated_by_last_action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_updated_by_last_action.rst

use_inline_resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_use_inline_resources.rst

whyrun_supported?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_whyrun_supported.rst

.. note:: When a lightweight provider contains only |chef| resources, the ``converge_by`` method is not required because it is already built into all of the |chef| `resources <http://docs.opscode.com/resource.html>`_.

Condition Statements
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_conditions.rst

Log Entries
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_logs.rst

rescue
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_logs_rescue.rst

Libraries
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_library.rst

Examples
-----------------------------------------------------
The following examples show various lightweight providers that use core |chef| resources.

aws_ebs_volume
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_aws_ebs_volume.rst

cron_d
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_cron_d.rst

rabbitmq_plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_rabbitmq_plugin.rst

rbenbv_global
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_rbenbv_global.rst

ssh_known_hosts_entry
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_ssh_known_hosts_entry.rst

Platform vs. Lightweight
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_compared_to_platform_resource.rst

|opscode|-maintained
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_opscode_maintained.rst

More Reading
=====================================================
Doug Ireton (a |chef| community member) has a blog with a nice series on LWRPs:

* Part 1: http://dougireton.com/blog/2012/12/31/creating-an-lwrp/
* Part 2: http://dougireton.com/blog/2013/01/07/creating-an-lwrp-part-2/
* Part 3: http://dougireton.com/blog/2013/01/13/creating-an-lwrp-part-3/