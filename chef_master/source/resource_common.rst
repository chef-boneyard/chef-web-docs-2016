=====================================================
Common Functionality 
=====================================================

All resources (and lightweight resources) share a set of common actions, attributes, conditional executions, notifications, and relative path options.

Actions
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_actions.rst

Examples
-----------------------------------------------------
The following examples show how to use common actions in a recipe.

**Use the :nothing action**

.. include:: ../../step_resource/step_resource_service_use_nothing_action.rst

Attributes
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use common attributes in a recipe.

**Use the ignore_failure common attribute**

.. include:: ../../step_resource/step_resource_package_use_ignore_failure_attribute.rst

**Use the provider common attribute**

.. include:: ../../step_resource/step_resource_package_use_provider_attribute.rst

**Use the supports common attribute**

.. include:: ../../step_resource/step_resource_service_use_supports_attribute.rst

**Use the supports and providers common attributes**

.. include:: ../../step_resource/step_resource_service_use_provider_and_supports_attributes.rst

Conditionals
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_attributes.rst

Arguments
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_arguments.rst

not_if Examples
-----------------------------------------------------
.. include:: ../../step_resource/step_resource_template_add_file_not_if_attribute_has_value.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby_with_curly_braces.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_string.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

only_if Examples
-----------------------------------------------------
.. include:: ../../step_resource/step_resource_template_add_file_only_if_attribute_has_value.rst

.. include:: ../../step_resource/step_resource_template_add_file_only_if_ruby.rst

.. include:: ../../step_resource/step_resource_template_add_file_only_if_string.rst

Lazy Attribute Evaluation
=====================================================
.. include:: ../../includes_cookbooks/includes_resource_common_lazy_evaluation.rst

Notifications
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications.rst

Notifications Timers
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_timers.rst

Notifies Syntax
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_notifies.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``notifies`` notification in a recipe.

**Delay notifications**

.. include:: ../../step_resource/step_resource_template_notifies_delay.rst

**Notify immediately**

.. include:: ../../step_resource/step_resource_template_notifies_run_immediately.rst

**Enable a service after a restart or reload**

.. include:: ../../step_resource/step_resource_service_notifies_enable_after_restart_or_reload.rst

**Notify multiple resources**

.. include:: ../../step_resource/step_resource_template_notifies_multiple_resources.rst

**Notify in a specific order**

.. include:: ../../step_resource/step_resource_execute_notifies_specific_order.rst

**Reload a service**

.. include:: ../../step_resource/step_resource_template_notifies_reload_service.rst

**Restart a service when a template is modified**

.. include:: ../../step_resource/step_resource_template_notifies_restart_service_when_template_modified.rst

**Send notifications to multiple resources**

.. include:: ../../step_resource/step_resource_template_notifies_send_notifications_to_multiple_resources.rst

**Execute a command using a template**

.. include:: ../../step_resource/step_resource_execute_command_from_template.rst

**Restart a service, and then notify a different service**

.. include:: ../../step_resource/step_resource_service_restart_and_notify.rst

**Notify when a remote source changes**

.. include:: ../../step_resource/step_resource_remote_file_transfer_remote_source_changes.rst

Subscribes Syntax
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_subscribes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``subscribes`` notification in a recipe.

**Prevent restart and reconfigure if configuration is broken**

.. include:: ../../step_resource/step_resource_execute_subscribes_prevent_restart_and_reconfigure.rst

**Reload a service using a template**

.. include:: ../../step_resource/step_resource_service_subscribes_reload_using_template.rst

**Stash a file in a data bag**

.. include:: ../../step_resource/step_resource_ruby_block_stash_file_in_data_bag.rst

Relative Paths
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_relative_paths.rst

Examples
-----------------------------------------------------
.. include:: ../../step_resource/step_resource_template_use_relative_paths.rst


Run from Resource Collection 
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_compile.rst

Before other Resources
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_compile_begin.rst

After Collection is Built
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_compile_end.rst


Windows File Security
=====================================================
.. include:: ../../includes_resources/includes_resource_common_windows_security.rst

Access Control Lists (ACLs)
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_common_windows_security_acl.rst

Inheritance
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_common_windows_security_inherits.rst

