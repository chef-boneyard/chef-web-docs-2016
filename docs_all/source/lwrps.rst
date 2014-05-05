=====================================================
Lightweight Resources
=====================================================

.. include:: ../../includes_lwrp/includes_lwrp.rst

Read more about how to create lightweight resources :doc:`here </lwrps_custom>`.

Common Functionality for all Resources 
=====================================================
The attributes and actions in this section apply to all resources.

Actions
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_actions.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use common actions in a recipe.

**Use the :nothing action**

.. include:: ../../step_resource/step_resource_service_use_nothing_action.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use common attributes in a recipe.

**Use the ignore_failure common attribute**

.. include:: ../../step_resource/step_resource_package_use_ignore_failure_attribute.rst

**Use the provider common attribute**

.. include:: ../../step_resource/step_resource_package_use_provider_attribute.rst

**Use the supports common attribute**

.. include:: ../../step_resource/step_resource_service_use_supports_attribute.rst

**Use the supports and providers common attributes**

.. include:: ../../step_resource/step_resource_service_use_provider_and_supports_attributes.rst

Conditional Execution
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_guards.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_common/includes_resources_common_guards_attributes.rst

Arguments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_common/includes_resources_common_guards_arguments.rst

not_if Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use ``not_if`` as a condition in a recipe:

**Create a file, but not if an attribute has a specific value**

.. include:: ../../step_resource/step_resource_template_add_file_not_if_attribute_has_value.rst

**Create a file with a Ruby block, but not if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby.rst

**Create a file with Ruby block that has curly braces, but not if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby_with_curly_braces.rst

**Create a file using a string, but not if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_not_if_string.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

only_if Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use ``only_if`` as a condition in a recipe:

**Create a file, but only if an attribute has a specific value**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_attribute_has_value.rst

**Create a file with a Ruby block, but only if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_ruby.rst

**Create a file using a string, but only if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_string.rst

File Locations
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Notifications
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_notifications.rst

Notifications Timers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst

Notifies Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
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
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The following examples show how to use the ``subscribes`` notification in a recipe.

**Prevent restart and reconfigure if configuration is broken**

.. include:: ../../step_resource/step_resource_execute_subscribes_prevent_restart_and_reconfigure.rst

**Reload a service using a template**

.. include:: ../../step_resource/step_resource_service_subscribes_reload_using_template.rst

**Stash a file in a data bag**

.. include:: ../../step_resource/step_resource_ruby_block_stash_file_in_data_bag.rst

Relative Paths
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_relative_paths.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_resource/step_resource_template_use_relative_paths.rst

Inline Resources
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_inline_compile_mode.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_inline_compile_mode_with.rst

Lightweight Resources and Providers
=====================================================
The following groups of lightweight resources are available in open source cookbooks that are provided by |company_name|:

* `apt <https://github.com/opscode-cookbooks/apt>`_
* `aws <https://github.com/opscode-cookbooks/aws>`_
* `bluepill <https://github.com/opscode-cookbooks/bluepill>`_
* `chef_handler <http://docs.opscode.com/resource_chef_handler.html>`_
* `daemontools <https://github.com/opscode-cookbooks/daemontools>`_
* `djbdns <https://github.com/opscode-cookbooks/djbdns>`_
* `dmg <https://github.com/opscode-cookbooks/dmg>`_
* `dynect <https://github.com/opscode-cookbooks/dynect>`_
* `firewall <https://github.com/opscode-cookbooks/firewall>`_
* `freebsd <https://github.com/opscode-cookbooks/freebsd>`_
* `gunicorn <https://github.com/opscode-cookbooks/gunicorn>`_
* `homebrew <https://github.com/opscode-cookbooks/homebrew>`_
* `iis <https://github.com/opscode-cookbooks/iis>`_
* `junos <http://docs.opscode.com/junos.html>`_
* `maven <https://github.com/opscode-cookbooks/maven>`_
* `netdev <https://github.com/opscode-cookbooks/netdev>`_
* `nginx <https://github.com/opscode-cookbooks/nginx>`_
* `omnibus <https://github.com/opscode-cookbooks/omnibus>`_
* `openssh <https://github.com/opscode-cookbooks/openssh>`_
* `php <https://github.com/opscode-cookbooks/php>`_
* `powershell <https://github.com/opscode-cookbooks/powershell>`_
* `rabbitmq <https://github.com/opscode-cookbooks/rabbitmq>`_
* `sudo <https://github.com/opscode-cookbooks/sudo>`_
* `transmission <https://github.com/opscode-cookbooks/transmission>`_
* `webpi <https://github.com/opscode-cookbooks/webpi>`_
* `windows <https://github.com/opscode-cookbooks/windows>`_
* `yum <http://docs.opscode.com/lwrp_yum.html>`_

