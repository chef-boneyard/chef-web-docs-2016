=====================================================
Common Functionality for all Resources 
=====================================================

.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt
.. include:: ../../swaps/swap_resources.txt


The actions, attributes, conditional executions, notifications, and relative paths described in this section apply to all resources.

Actions
=====================================================
.. include:: ../../includes/includes_chef_cookbook_resource_common_actions.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_common_action_nothing.rst

Attributes
=====================================================
.. include:: ../../includes/includes_chef_cookbook_resource_common_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_common_attribute_ignore_failure.rst

.. include:: ../../steps/step_chef_common_attribute_provider_and_supports.rst

.. include:: ../../steps/step_chef_common_attribute_provider.rst

.. include:: ../../steps/step_chef_common_attribute_supports.rst

Conditional Execution
=====================================================
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_attributes.rst

Arguments
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_arguments.rst

``not_if`` Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_common_not_if_create_temp_file.rst

.. include:: ../../steps/step_chef_common_not_if_execute_ruby_block_with_curly_braces.rst

.. include:: ../../steps/step_chef_common_not_if_execute_ruby_block.rst

.. include:: ../../steps/step_chef_common_not_if_execute_string.rst

``only_if`` Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_common_only_if_create_temp_file.rst

.. include:: ../../steps/step_chef_common_only_if_execute_ruby_block.rst

.. include:: ../../steps/step_chef_common_only_if_execute_string.rst

Notifications
=====================================================
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications.rst

Notifications Timers
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_timers.rst

Notifies Syntax
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_notifies.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_common_notifies_syntax_delay_notifications_until_end_of_run.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_enable_service_after_restart_or_reload.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_notify_multiple_resources.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_ordered_notification_of_resources.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_prevent_restart_if_config_is_broken.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_reload_service.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_restart_service_when_template_is_modified.rst

.. include:: ../../steps/step_chef_common_notifies_syntax_send_notification_to_multiple_resources.rst


Subscribes Syntax
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_subscribes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_common_subscribes_syntax_notification_timings.rst

.. include:: ../../steps/step_chef_common_subscribes_syntax_prevent_restart_if_config_is_broken.rst

.. include:: ../../steps/step_chef_common_subscribes_syntax_reload_service_using_template.rst

Relative Paths
=====================================================
.. include:: ../../includes/includes_chef_cookbook_resource_common_relative_paths.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_common_relative_paths.rst