=====================================================
Resources and Providers Reference
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_provider_platform.rst

This reference describes each of the resources available in the |chef| library, including the list of actions available for the resource, the attributes that can be used, the providers that will do the work (and the provider's shortcut resource name), and examples of using each resource.


Common Functionality for all Resources 
=====================================================
The attributes and actions in this section apply to all resources.

Actions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_actions.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use common actions in a recipe.

**Use the :nothing action**

.. include:: ../../step_resource/step_resource_service_use_nothing_action.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_attributes.rst

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
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_attributes.rst

Arguments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_arguments.rst

``not_if`` Examples
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

``only_if`` Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use ``only_if`` as a condition in a recipe:

**Create a file, but only if an attribute has a specific value**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_attribute_has_value.rst

**Create a file with a Ruby block, but only if "/etc/passwd" does not exist**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_ruby.rst

**Create a file using a string, but only if "/etc/passwd" exists**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_string.rst

Notifications
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications.rst

Notifications Timers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_timers.rst

Notifies Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_notifies.rst

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

**Restart when a configuration is broken**

.. include:: ../../step_resource/step_resource_execute_notifies_prevent_restart_if_config_is_broken.rst

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
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_subscribes.rst

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
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_relative_paths.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_resource/step_resource_template_use_relative_paths.rst





Resources
=====================================================
The following resources are included with |chef| and have native providers:

* cookbook_file
* cron
* deploy (including |git| and |svn|)
* directory
* env
* erlang_call
* execute
* file
* group
* http_request
* ifconfig
* link
* log
* mdadm
* mount
* ohai
* package
* powershell_script
* remote_directory
* remote_file
* route
* ruby_block
* scm
* script
* service
* template
* user
* yum

See below for more information about each of these resources, their related actions and attributes, the providers they rely on, and examples of how these resources can be used in recipes.

cookbook_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_cookbook_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_providers.rst

File Specificity
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_file_specificity.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Transfer a file**

.. include:: ../../step_resource/step_resource_cookbook_file_transfer_a_file.rst

**Handle cookbook_file and yum_package resources in the same recipe**

.. include:: ../../step_resource/step_resource_yum_package_handle_cookbook_file_and_yum_package.rst

**Install repositories from a file, trigger a command, and force the internal cache to reload**

.. include:: ../../step_resource/step_resource_yum_package_install_yum_repo_from_file.rst

**Use a case statement**

.. include:: ../../step_resource/step_resource_cookbook_file_use_case_statement.rst

**Use the data_bag_item method in the recipe DSL**

.. include:: ../../step_resource/step_resource_cookbook_file_use_data_bag.rst


cron
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_cron.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Run a program at a specified interval**

.. include:: ../../step_resource/step_resource_cron_run_program_on_fifth_hour.rst

**Run an entry if a folder exists**

.. include:: ../../step_resource/step_resource_cron_run_entry_when_folder_exists.rst

**Run every Saturday, 8:00 AM**

.. include:: ../../step_resource/step_resource_cron_run_every_saturday.rst

**Run only in November**

.. include:: ../../step_resource/step_resource_cron_run_only_in_november.rst



deploy
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_deploy.rst

.. include:: ../../includes_resources/includes_resource_deploy_capistrano.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_syntax.rst

Deploy Strategies
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy.rst

**Deploy Cache File**

.. include:: ../../includes_resources/includes_resource_deploy_strategy_start_over.rst

Deploy Phases
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_strategy_phases.rst

Callbacks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_strategy_callbacks.rst

**Callbacks and Capistrano**

.. include:: ../../includes_resources/includes_resource_deploy_capistrano_callbacks.rst

Layout Modifiers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_strategy_layouts.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_providers.rst

deploy_branch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_providers_deploy_branch.rst

deploy_revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_providers_deploy_revision.rst

timestamped_deploy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_providers_timestamped_deploy.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Modify the layout of a Ruby on Rails application**

.. include:: ../../step_resource/step_resource_deploy_custom_application_layout.rst

**Use resources within callbacks**

.. include:: ../../step_resource/step_resource_deploy_embedded_recipes_for_callbacks.rst

**Deploy from a private git repository without using the application cookbook**

.. include:: ../../step_resource/step_resource_deploy_private_git_repo_using_application_cookbook.rst

**Use an SSH wrapper**

.. include:: ../../step_resource/step_resource_deploy_recipe_uses_ssh_wrapper.rst

**Use a callback to include a file that will be passed as a code block**

.. include:: ../../step_resource/step_resource_deploy_use_callback_to_include_code_from_file.rst

**Use a callback to pass a code block**

.. include:: ../../step_resource/step_resource_deploy_use_callback_to_pass_python.rst

**Use the same API for all recipes using the same gem**

.. include:: ../../step_resource/step_resource_deploy_use_same_api_as_gitdeploy_gems.rst

**Deploy without creating symbolic links to a shared folder**

.. include:: ../../step_resource/step_resource_deploy_without_symlink_to_shared.rst

**Clear a layout modifier attribute**

.. include:: ../../step_resource/step_resource_deploy_clear_layout_modifiers.rst



directory
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_directory.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create a directory**

.. include:: ../../step_resource/step_resource_directory_create.rst

**Create a directory in Microsoft Windows**

.. include:: ../../step_resource/step_resource_directory_create_in_windows.rst

**Create a directory recursively**

.. include:: ../../step_resource/step_resource_directory_create_recursively.rst

**Delete a directory**

.. include:: ../../step_resource/step_resource_directory_delete.rst

**Set directory permissions using a variable**

.. include:: ../../step_resource/step_resource_directory_set_permissions_with_variable.rst

**Set directory permissions for a specific type of node**

.. include:: ../../step_resource/step_resource_directory_set_permissions_for_specific_node.rst

**Reload the configuration**

.. include:: ../../step_resource/step_resource_ruby_block_reload_configuration.rst

env
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_env.rst

.. note:: |note env resource variable on unix|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Set an environment variable**

.. include:: ../../step_resource/step_resource_environment_set_variable.rst


erl_call
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_erlang_call.rst

.. note:: |note erlang_call resource must be on path|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Run a command**

.. include:: ../../step_resource/step_resource_erlang_call_run_command_on_node.rst


execute
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_execute.rst

.. note:: |note execute resource intepreter|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Run a command upon notification**

.. include:: ../../step_resource/step_resource_execute_command_upon_notification.rst

**Run a touch file only once while running a command**

.. include:: ../../step_resource/step_resource_execute_command_with_touch_file.rst

**Run a command which requires an environment variable**

.. include:: ../../step_resource/step_resource_execute_command_with_variable.rst

**Delete a repository using yum to scrub the cache**

.. include:: ../../step_resource/step_resource_yum_package_delete_repo_use_yum_to_scrub_cache.rst

**Install repositories from a file, trigger a command, and force the internal cache to reload**

.. include:: ../../step_resource/step_resource_yum_package_install_yum_repo_from_file.rst

**Execute a command using a template**

.. include:: ../../step_resource/step_resource_execute_command_from_template.rst

**Add a rule to an IP table**

.. include:: ../../step_resource/step_resource_execute_add_rule_to_iptable.rst

**Stop a service, do stuff, and then restart it**

.. include:: ../../step_resource/step_resource_service_stop_do_stuff_start.rst

**Use the platform_family? method**

.. include:: ../../step_resource/step_resource_remote_file_use_platform_family.rst

**If a node doesn't have MySQL, install MySQL**

.. include:: ../../step_resource/step_resource_mount_mysql.rst

**Control a service using the execute resource**

.. include:: ../../step_resource/step_resource_execute_control_a_service.rst

**Use the search recipe DSL method to find users**

.. include:: ../../step_resource/step_resource_execute_use_search_dsl_method.rst

**Enable remote login for Mac OS X**

.. include:: ../../step_resource/step_resource_execute_enable_remote_login.rst


file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_file.rst

.. note:: |note file resource use other resources|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create a file**

.. include:: ../../step_resource/step_resource_file_create.rst

**Create a file in Microsoft Windows**

.. include:: ../../step_resource/step_resource_file_create_in_windows.rst

**Remove a file**

.. include:: ../../step_resource/step_resource_file_remove.rst

**Set file modes**

.. include:: ../../step_resource/step_resource_file_set_file_mode.rst

**Delete a repository using yum to scrub the cache**

.. include:: ../../step_resource/step_resource_yum_package_delete_repo_use_yum_to_scrub_cache.rst

**Use the contents of a data bag in a recipe**

.. include:: ../../step_resource/step_resource_file_use_data_bag.rst


group
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_group.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Append users to groups**

.. include:: ../../step_resource/step_resource_group_append_user.rst


http_request
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_http_request.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Send a GET request**

.. include:: ../../step_resource/step_resource_http_request_send_get.rst

**Send a POST request**

.. include:: ../../step_resource/step_resource_http_request_send_post.rst


ifconfig
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ifconfig.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Configure a network interface**

.. include:: ../../step_resource/step_resource_ifconfig_configure_network_interface.rst


link
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_link.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create symbolic links**

.. include:: ../../step_resource/step_resource_link_create_symbolic.rst

**Create hard links**

.. include:: ../../step_resource/step_resource_link_create_hard.rst

**Delete links**

.. include:: ../../step_resource/step_resource_link_delete.rst


log
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_log.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Set default logging level**

.. include:: ../../step_resource/step_resource_log_set_info.rst

**Set debug logging level**

.. include:: ../../step_resource/step_resource_log_set_debug.rst

**Create log entry when the contents of a data bag are used**

.. include:: ../../step_resource/step_resource_log_set_debug.rst

**Add a message to a log file**

.. include:: ../../step_resource/step_resource_log_add_message.rst

mdadm
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mdadm.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create and assemble a RAID 1 array**

.. include:: ../../step_resource/step_resource_mdadm_assemble_raid_array.rst


mount
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mount.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Mount a labeled file system**

.. include:: ../../step_resource/step_resource_mount_labeled_file_system.rst

**Mount a local block drive**

.. include:: ../../step_resource/step_resource_mount_local_block_device.rst

**Mount a non-block file system**

.. include:: ../../step_resource/step_resource_mount_nonblock_file_system.rst

**Mount and add to the file systems table**

.. include:: ../../step_resource/step_resource_mount_remote_file_system_add_to_fstab.rst

**Mount a remote file system**

.. include:: ../../step_resource/step_resource_mount_remote_file_system.rst

**Mount a remote folder in Microsoft Windows**

.. include:: ../../step_resource/step_resource_mount_remote_windows_folder.rst

**Unmount a remote folder in Microsoft Windows**

.. include:: ../../step_resource/step_resource_mount_unmount_remote_windows_drive.rst

**Stop a service, do stuff, and then restart it**

.. include:: ../../step_resource/step_resource_service_stop_do_stuff_start.rst

**If a node doesn't have MySQL, install MySQL**

.. include:: ../../step_resource/step_resource_mount_mysql.rst


ohai
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Reload Ohai**

.. include:: ../../step_resource/step_resource_ohai_reload.rst

**Reload Ohai after a new user is created**

.. include:: ../../step_resource/step_resource_ohai_reload_after_create_user.rst


package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_package.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_syntax.rst

Gem Package Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options.rst

Specify Options with a Hash
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_package_options_hash.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_hash_options.rst

Specify Options with a String
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_package_options_string.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_options_string.rst

Specify Options with a .gemrc File
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_package_options_gemrc.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_gemrc.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Install a gems file for use in recipes**

.. include:: ../../step_resource/step_resource_package_install_gems_for_chef_recipe.rst

**Install a gems file from the local file system**

.. include:: ../../step_resource/step_resource_package_install_gems_from_local.rst

**Install a package**

.. include:: ../../step_resource/step_resource_package_install.rst

**Install a package version**

.. include:: ../../step_resource/step_resource_package_install_version.rst

**Install a package with options**

.. include:: ../../step_resource/step_resource_package_install_with_options.rst

**Install a package with a response_file**

.. include:: ../../step_resource/step_resource_package_install_with_response_file.rst

**Install a package using a specific provider**

.. include:: ../../step_resource/step_resource_package_install_with_specific_provider.rst

**Install a specified architecture using a named provider**

.. include:: ../../step_resource/step_resource_package_install_with_yum.rst

**Purge a package**

.. include:: ../../step_resource/step_resource_package_purge.rst

**Remove a package**

.. include:: ../../step_resource/step_resource_package_remove.rst

**Upgrade a package**

.. include:: ../../step_resource/step_resource_package_upgrade.rst

**Avoid unnecessary string interpolation**

.. include:: ../../step_resource/step_resource_package_avoid_unnecessary_string_interpolation.rst

**Install a package in a platform**

.. include:: ../../step_resource/step_resource_package_install_package_on_platform.rst

**Install sudo, then configure /etc/sudoers/ file**

.. include:: ../../step_resource/step_resource_package_install_sudo_configure_etc_sudoers.rst

**Use a case statement to specify the platform**

.. include:: ../../step_resource/step_resource_package_use_case_statement.rst

**Use symbols to reference attributes**

.. include:: ../../step_resource/step_resource_package_use_symbols_to_reference_attributes.rst

**Use a whitespace array to simply a recipe**

.. include:: ../../step_resource/step_resource_package_use_whitespace_array.rst


powershell_script
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_powershell_script.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Write to an interpolated path**

.. include:: ../../step_resource/step_resource_powershell_write_to_interpolated_path.rst

**Change the working directory**

.. include:: ../../step_resource/step_resource_powershell_cwd.rst

**Change the working directory in Microsoft Windows**

.. include:: ../../step_resource/step_resource_powershell_cwd_microsoft_env.rst

**Pass an environment variable to a script**

.. include:: ../../step_resource/step_resource_powershell_pass_env_to_script.rst





registry
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_user.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create a registry key**

.. include:: ../../step_resource/step_resource_registry_key_create.rst

**Delete a registry key value**

.. include:: ../../step_resource/step_resource_registry_key_delete_value.rst

**Delete a registry key and its subkeys, recursively**

.. include:: ../../step_resource/step_resource_registry_key_delete_recursively.rst

**Use re-directed keys**

.. include:: ../../step_resource/step_resource_registry_key_redirect.rst


remote_directory
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_remote_directory.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_directory_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_directory_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_directory_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_directory_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Recursively transfer a directory from a remote location**

.. include:: ../../step_resource/step_resource_remote_directory_recursive_transfer.rst

**Use with the chef_handler lightweight resource**

.. include:: ../../step_resource/step_resource_remote_directory_report_handler.rst


remote_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_remote_file.rst

.. note:: |note remote_file resource fetch from files directory|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Transfer a file from a URL**

.. include:: ../../step_resource/step_resource_remote_file_transfer_from_url.rst

**Transfer a file only when the source has changed**

.. include:: ../../step_resource/step_resource_remote_file_transfer_remote_source_changes.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

**Store certain settings**

.. include:: ../../step_resource/step_resource_remote_file_store_certain_settings.rst

**Use the platform_family? method**

.. include:: ../../step_resource/step_resource_remote_file_use_platform_family.rst

route
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_route.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Add a host route**

.. include:: ../../step_resource/step_resource_route_add_host.rst

**Delete a network route**

.. include:: ../../step_resource/step_resource_route_delete_network.rst


ruby_block
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ruby_block.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Re-read configuration data**

.. include:: ../../step_resource/step_resource_ruby_block_reread_chef_client.rst

**Install repositories from a file, trigger a command, and force the internal cache to reload**

.. include:: ../../step_resource/step_resource_yum_package_install_yum_repo_from_file.rst

**Use an if statement with the platform recipe DSL method**

.. include:: ../../step_resource/step_resource_ruby_block_if_statement_use_with_platform.rst

**Stash a file in a data bag**

.. include:: ../../step_resource/step_resource_ruby_block_stash_file_in_data_bag.rst

**Update the /etc/hosts file**

.. include:: ../../step_resource/step_resource_ruby_block_update_etc_host.rst

**Set environment variables**

.. include:: ../../step_resource/step_resource_ruby_block_use_variables_to_set_env_variables.rst

**Set JAVA_HOME**

.. include:: ../../step_resource/step_resource_ruby_block_use_variables_to_set_java_home.rst

**Run specific blocks of Ruby code on specific platforms**

.. include:: ../../step_resource/step_resource_ruby_block_run_specific_ruby_blocks_on_specific_platforms.rst

**Reload the configuration**

.. include:: ../../step_resource/step_resource_ruby_block_reload_configuration.rst


script
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_script.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Use a named provider to run a script**

.. include:: ../../step_resource/step_resource_script_bash_provider_and_interpreter.rst

**Run a script**

.. include:: ../../step_resource/step_resource_script_bash_script.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

**Install an application from github using bash**

.. include:: ../../step_resource/step_resource_scm_use_bash_and_ruby_build.rst

**Store certain settings**

.. include:: ../../step_resource/step_resource_remote_file_store_certain_settings.rst


service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_service.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Start a service**

.. include:: ../../step_resource/step_resource_service_start_service.rst

**Start a service, enable it**

.. include:: ../../step_resource/step_resource_service_start_service_and_enable_at_boot.rst

**Use a pattern**

.. include:: ../../step_resource/step_resource_service_process_table_has_different_value.rst

**Manage a service, depending on the node platform**

.. include:: ../../step_resource/step_resource_service_manage_ssh_based_on_node_platform.rst

**Change a service provider, depending on the node platform**

.. include:: ../../step_resource/step_resource_service_change_service_provider_based_on_node.rst

**Set an IP address using variables and a template**

.. include:: ../../step_resource/step_resource_template_set_ip_address_with_variables_and_template.rst

**Use a cron timer to manage a service**

.. include:: ../../step_resource/step_resource_service_use_variable.rst

**Restart a service, and then notify a different service**

.. include:: ../../step_resource/step_resource_service_restart_and_notify.rst

**Stop a service, do stuff, and then restart it**

.. include:: ../../step_resource/step_resource_service_stop_do_stuff_start.rst

**If a node doesn't have MySQL, install MySQL**

.. include:: ../../step_resource/step_resource_mount_mysql.rst

**Control a service using the execute resource**

.. include:: ../../step_resource/step_resource_execute_control_a_service.rst



subversion
-----------------------------------------------------

.. include:: ../../includes_resources/includes_resource_scm_subversion.rst

.. note:: |note scm resource use with resource deploy|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_subversion_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_subversion_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_subversion_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_subversion_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Get the latest version of an application**

.. include:: ../../step_resource/step_resource_scm_get_latest_version.rst



template
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_template.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_attributes.rst

Windows File Security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_general_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources/includes_resource_general_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources/includes_resource_general_windows_security_inherits.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_providers.rst

File Specificity
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution_file_specificity.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Configure a file from a template**

.. include:: ../../step_resource/step_resource_template_configure_file.rst

**Configure a file from a local template**

.. include:: ../../step_resource/step_resource_template_configure_file_from_local.rst

**Configure a file using a variable map**

.. include:: ../../step_resource/step_resource_template_configure_file_with_variable_map.rst

**Use the ``not_if`` condition**

.. include:: ../../step_resource/step_resource_template_add_file_not_if_attribute_has_value.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_ruby_with_curly_braces.rst

.. include:: ../../step_resource/step_resource_template_add_file_not_if_string.rst

**Use the ``only_if`` condition**

.. include:: ../../step_resource/step_resource_template_add_file_only_if_attribute_has_value.rst

.. include:: ../../step_resource/step_resource_template_add_file_only_if_ruby.rst

.. include:: ../../step_resource/step_resource_template_add_file_only_if_string.rst

**Use a whitespace array (``%w``)**

.. include:: ../../step_resource/step_resource_template_use_whitespace_array.rst

**Set an IP address using variables and a template**

.. include:: ../../step_resource/step_resource_template_set_ip_address_with_variables_and_template.rst

**Execute a command using a template**

.. include:: ../../step_resource/step_resource_execute_command_from_template.rst

**Add a rule to an IP table**

.. include:: ../../step_resource/step_resource_execute_add_rule_to_iptable.rst

**Apply proxy settings consistently across a Chef organization**

.. include:: ../../step_resource/step_resource_template_consistent_proxy_settings.rst

**Get template settings from a local file**

.. include:: ../../step_resource/step_resource_template_get_settings_from_local_file.rst

user
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_user.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_attributes.rst

Supported Features
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_supported_features.rst

Password Shadow Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_password_shadow_hash.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create a random user**

.. include:: ../../step_resource/step_resource_user_create_random.rst

**Create a system user**

.. include:: ../../step_resource/step_resource_user_create_system.rst

**Create a system user with a variable**

.. include:: ../../step_resource/step_resource_user_create_system_user_with_variable.rst



yum_package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_yum_package.rst

.. note:: |note yum resource using file names|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_package_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_package_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_package_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Install an exact version**

.. include:: ../../step_resource/step_resource_yum_package_install_exact_version.rst

**Install a minimum version**

.. include:: ../../step_resource/step_resource_yum_package_install_minimum_version.rst

**Install a minimum version using the default action**

.. include:: ../../step_resource/step_resource_yum_package_install_package_using_default_action.rst

**To install a package**

.. include:: ../../step_resource/step_resource_yum_package_install_package.rst

**To install a partial minimum version**

.. include:: ../../step_resource/step_resource_yum_package_install_partial_minimum_version.rst

**To install a specific architecture**

.. include:: ../../step_resource/step_resource_yum_package_install_specific_architecture.rst

**To install a specific version-release**

.. include:: ../../step_resource/step_resource_yum_package_install_specific_version_release.rst

**To install a specific version (even when older than the current)**

.. include:: ../../step_resource/step_resource_yum_package_install_specific_version.rst

**Handle cookbook_file and yum_package resources in the same recipe**

.. include:: ../../step_resource/step_resource_yum_package_handle_cookbook_file_and_yum_package.rst






Lightweight Resources and Providers
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst

Custom resources and providers can also be created using the |lwrp| DSL. |opscode| provides several cookbooks that define some commonly used |lwrp|. To use the lightweight resources provided by |opscode| the cookbook that defines it must also be used. These lightweight resources can be used within recipes to increase automation opportunities.

The following groups of lightweight resources are available in open source cookbooks that are provided by |opscode|:

* application
* apt
* aws
* bluepill
* chef_handler
* daemontools
* djbdns
* dmg
* dynect
* firewall
* freebsd
* gunicorn
* homebrew
* iis
* maven
* mysql
* nagios
* pacman
* php
* powershell
* python
* rabbitmq
* riak
* samba
* sudo
* supervisor
* transmission
* users
* webpi
* windows
* yum
* zenoss

Some of the cookbooks contain more than one lightweight resource. Each lightweight resource is described individually in the following sections.




application
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_base.rst

.. note:: This lightweight resource is part of the ``application`` cookbook (http://community.opscode.com/cookbooks/application).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_base_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_base_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
See the application-specific lightweight resources.


application_java_webapp
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_java_webapp.rst

.. note:: This lightweight resource is part of the ``application_java`` cookbook (http://community.opscode.com/cookbooks/application_java).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_java_webapp_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_java_webapp_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_java_tomcat
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_java_tomcat.rst

.. note:: This lightweight resource is part of the ``application_java`` cookbook (http://community.opscode.com/cookbooks/application_java).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_java_tomcat_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_java_tomcat_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     java_webapp do
       database_master_role "database_master"
       database do
         driver 'org.gjt.mm.mysql.Driver'
         database 'name'
         port 5678
         username 'user'
         password 'password'
         max_active 1
         max_idle 2
         max_wait 3
       end
     end
   
     tomcat
   end

To create an application using a template:

.. code-block:: ruby

   application "jenkins" do
     path "/usr/local/jenkins"
     owner node["tomcat"]["user"]
     group node["tomcat"]["group"]
     repository "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
     revision "6facd94e958ecf68ffd28be371b5efcb5584c885b5f32a906e477f5f62bdb518-1"
   
     java_webapp do
       context_template "jenkins-context.xml.erb"
     end
   
     tomcat
   end

To invoke a method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     java_webapp do
       database_master_role "database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <Context docBase="<%= @war %>" path="/">
     <!-- <%= @database['quorum'] %> -->
     <!-- <%= @database['replicas'].join(',') %> -->
   </Context>


application_nginx_load_balancer
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_nginx_load_balancer.rst

.. note:: This lightweight resource is part of the ``application_nginx`` cookbook (http://community.opscode.com/cookbooks/application_nginx).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_nginx_load_balancer_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_nginx_load_balancer_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     rails do
     end
   
     nginx_load_balancer do
       only_if { node['roles'].include?('my-app_load_balancer') }
     end
   end

Assuming you have a my-app_application_server role applied to nodes backend-0..backend-3, and a my-app_load_balancer role assigned to frontend-0..frontend-1, then nginx will be installed on the frontends, and configured like this:

.. code-block:: ruby

   upstream my-app {
     server <IP of backend-0>:8000;
     server <IP of backend-1>:8000;
     server <IP of backend-2>:8000;
     server <IP of backend-3>:8000;
   }
   
   server {
     listen 80;
     server_name frontend-0;
     location / {
       proxy_pass http://my-app;
     }
   }

To configure |nginx| to serve static files by setting the ``static_files`` attribute:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     nginx_load_balancer do
       only_if { node['roles'].include?('my-app_load_balancer') }
       static_files "/img" => "images"
     end
   end

which will be expanded to:

.. code-block:: ruby

   server {
     listen 80;
     server_name frontend-0;
   
     location /img {
       alias /usr/local/my-app/current/images;
     }
   
     location / {
       proxy_pass http://my-app;
     }
   }


application_php_mod_php_apache2
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_php_mod_php_apache2.rst

.. note:: This lightweight resource is part of the ``application_php`` cookbook (http://community.opscode.com/cookbooks/application_php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_php_mod_php_apache2_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_php_mod_php_apache2_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "phpvirtualbox" do
     path "/usr/local/www/sites/phpvirtualbox"
     owner node[:apache][:user]
     group node[:apache][:user]
     repository "..."
     deploy_key "..."
     revision "4_0_7"
     packages ["php-soap"]
   
     php do
       database_master_role "database_master"
       local_settings_file "config.php"
     end
   
     mod_php_apache2
   end

This will result in a ``config.php`` file getting created from a ``config.php.erb`` template that is present in the application cookbook. 

To invoke a method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     php do
       database_master_role "database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum']
   <%= @database['replicas'].join(',') %>



application_php_php
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_php_php.rst

.. note:: This lightweight resource is part of the ``application_php`` cookbook (http://community.opscode.com/cookbooks/application_php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_php_php_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_php_php_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_python_celery
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_python_celery.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_celery_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_celery_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.



application_python_django
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_python_django.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_django_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_django_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

application_python_gunicorn
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_python_gunicorn.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_gunicorn_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_python_gunicorn_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create a sample application that needs a database connection:

.. code-block:: ruby

   application "packaginator" do
     path "/srv/packaginator"
     owner "nobody"
     group "nogroup"
     repository "https://github.com/coderanger/packaginator.git"
     revision "master"
     migrate true
     packages ["libpq-dev", "git-core", "mercurial"]
   
     django do 
       packages ["redis"]
       requirements "requirements/mkii.txt"
       settings_template "settings.py.erb"
       debug true
       collectstatic "build_static --noinput"
       database do
         database "packaginator"
         engine "postgresql_psycopg2"
         username "packaginator"
         password "awesome_password"
       end
       database_master_role "packaginator_database_master"
     end
   end

You can invoke any method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/srv/packaginator"
     repository "..."
     revision "..."
   
     django do
       database_master_role "packaginator_database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum']
   <%= @database['replicas'].join(',') %>

application_ruby_memcached
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_memcached.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_memcached_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_memcached_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that connects to |memcached|:

.. code-block:: ruby

   application "my-app" do
     path "..."
     repository "..."
     revision "..."
   
     memcached do
       role "memcached_master"
       options do
         ttl 1800
         memory 256
       end
     end
   end

This will generate a config/memcached.yml file:

.. code-block:: ruby

   production:
     ttl: 1800
     memory: 256
     servers:
       - 192.168.0.10:11211


application_ruby_passenger_apache2
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_passenger_apache2.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_passenger_apache2_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_passenger_apache2_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "redmine" do
     path "/usr/local/www/redmine"
   
     rails do 
       database do
         database "redmine"
         username "redmine"
         password "awesome_password"
       end
       database_master_role "redmine_database_master"
     end
   
     passenger_apache2 do
     end
   end

You can invoke any method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "..."
     repository "..."
     revision "..."
   
     rails do
       database_master_role "my-app_database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum'] %>
   <%= @database['replicas'].join(',') %>

application_ruby_rails
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_rails.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_rails_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_rails_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_ruby_unicorn
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_unicorn.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_unicorn_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_application_ruby_unicorn_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


apt_preference
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_apt_preference_pin.rst

.. include:: ../../step_lwrp/step_lwrp_apt_preference_unpin.rst


apt_repository
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_cloudkick.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list_alternate.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_ppa_list.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_zenoss.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_remove_zenoss.rst


aws_ebs_volume
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_prune_snapshots.rst

aws_elastic_ip
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_associate.rst

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_disassociate.rst







aws_elastic_lb
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_aws_elastic_lb_add.rst


aws_resource_tag
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_node.rst

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_resources.rst



bluepill_service
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service.rst

.. note:: This lightweight resource is part of the ``bluepill`` cookbook (http://community.opscode.com/cookbooks/bluepill).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_blupill_service.rst

.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_resource.rst

.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_resource_template.rst

chef_handler
-----------------------------------------------------
.. include:: ../../includes_handler/includes_handler.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

.. note:: This lightweight resource is part of the ``chef_handler`` cookbook (http://community.opscode.com/cookbooks/chef_handler).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_cloudkickhandler.rst

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_during_compile.rst

.. include:: ../../step_lwrp/step_lwrp_chef_handler_exceptions_only.rst

.. include:: ../../step_lwrp/step_lwrp_chef_handler_register.rst

daemontools_service
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service.rst

.. note:: This lightweight resource is part of the ``daemontools`` cookbook (http://community.opscode.com/cookbooks/daemontools).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_daemontools_service_setup_directory.rst

djbdns_rr
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr.rst

.. note:: This lightweight resource is part of the ``djbdns`` cookbook (http://community.opscode.com/cookbooks/djbdns).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_djbdns_rr_configure_for_tinydns.rst

dmg_package
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package.rst

.. note:: This lightweight resource does not do full package management for |mac os x| applications, as they have different installed artifacts.

.. note:: This lightweight resource is part of the ``dmg`` cookbook (http://community.opscode.com/cookbooks/dmg).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_google_chrome.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_already_downloaded_app.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_dropbox.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_macirssi.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_tunnelblick.rst

dynect_rr
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr.rst

.. note:: This lightweight resource is part of the ``dynect`` cookbook (http://community.opscode.com/cookbooks/dynect). The ``dynect_rest`` |ruby| |gem| is required.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_dynect_rr_create_record.rst

firewall
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_firewall_enable.rst

firewall_rule
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_ssh.rst

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_tcp.rst


freebsd_port_options
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options.rst

.. note:: This lightweight resource is part of the ``freebsd`` cookbook (http://community.opscode.com/cookbooks/freebsd).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_freebsd_port_options_read.rst

.. include:: ../../step_lwrp/step_lwrp_freebsd_port_options_write.rst

gunicorn_config
-----------------------------------------------------
|gunicorn desc|

.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config.rst

.. note:: This lightweight resource is part of the ``gunicorn`` cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_create.rst

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_edit_values.rst

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_sleep_before_fork.rst


gunicorn_install
-----------------------------------------------------
|gunicorn desc|

.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install.rst

.. note:: This lightweight resource is part of the ``gunicorn`` cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_gunicorn_install_virtual_env.rst


homebrew
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_homebrew_tap.rst

.. note:: This lightweight resource is part of the ``homebrew`` cookbook (http://community.opscode.com/cookbooks/homebrew).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_homebrew_tap_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_homebrew_tap_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_homebrew_tap_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_homebrew_install_mysql.rst

.. include:: ../../step_lwrp/step_lwrp_homebrew_tap_repository.rst

.. include:: ../../step_lwrp/step_lwrp_homebrew_untap_repository.rst

.. include:: ../../step_lwrp/step_lwrp_homebrew_use_provider.rst


iis_app
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_app.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_iis_app_create.rst


iis_config
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_config.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_iis_config_load_array_of_commands.rst

.. include:: ../../step_lwrp/step_lwrp_iis_config_set_up_logging.rst


iis_module
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_module.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_iis_module_add.rst

iis_pool
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_iis_pool_create.rst

iis_site
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_site.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_domain.rst

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_location.rst

.. include:: ../../step_lwrp/step_lwrp_iis_site_stop.rst


maven
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_maven.rst

.. note:: This lightweight resource is part of the ``maven`` cookbook (http://community.opscode.com/cookbooks/maven).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_maven_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_maven_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_maven_install.rst



mysql_database
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database.rst

.. note:: This lightweight resource is part of the ``mysql`` cookbook (http://community.opscode.com/cookbooks/mysql).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_mysql_database_create_database.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_flush_tables.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_query_database.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_unlock_tables.rst



nagios_nrpecheck
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck.rst

.. note:: This lightweight resource is part of the ``nagios`` cookbook (http://community.opscode.com/cookbooks/nagios).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_nagios_nrpecheck_define.rst

.. include:: ../../step_lwrp/step_lwrp_nagios_nrpecheck_remove.rst


pacman_aur
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur.rst

.. note:: This lightweight resource is part of the ``pacman`` cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_simple_package.rst

.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_custom_package.rst

pacman_group
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group.rst

.. note:: This lightweight resource is part of the ``pacman`` cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_pacman_group_base_devel.rst

php_pear
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_php_pear_install_apc_pecl.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_horde_beta.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_mongodb_pecl.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_specific_version.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_yaml.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_upgrade.rst

php_pear_channel
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_discover_horde.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_download_then_add.rst

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_update_main_channels.rst



powershell
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell.rst

.. note:: This lightweight resource is part of the ``powershell`` cookbook (http://community.opscode.com/cookbooks/powershell).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_powershell_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_powershell_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_powershell_change_hostname.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_pass_env_variable.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_set_cwd_attribute.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_use_cwd.rst

.. include:: ../../step_lwrp/step_lwrp_powershell_write_to_interpolated_path.rst


python_pip
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_pip.rst

.. note:: This lightweight resource is part of the ``python`` cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_python_pip_install_gunicorn.rst

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_specific_pip.rst

.. include:: ../../step_lwrp/step_lwrp_python_pip_target_virtualenv.rst

.. include:: ../../step_lwrp/step_lwrp_python_pip_use_with_core_package_resource.rst

python_virtualenv
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv.rst

.. note:: This lightweight resource is part of the ``python`` cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_python.rst

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_ubuntu.rst


rabbitmq_plugin
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_enable.rst

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_disable.rst

rabbitmq_user
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_add.rst

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_delete.rst

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_set_permissions.rst


rabbitmq_vhost
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_rabbitmq_vhost_add.rst


riak_cluster
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster.rst

.. note:: This lightweight resource is part of the ``riak`` cookbook (http://community.opscode.com/cookbooks/riak).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_riak_cluster_add_to_cluster.rst

samba_user
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_samba_user.rst

.. note:: This lightweight resource is part of the ``samba`` cookbook (http://community.opscode.com/cookbooks/samba).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_samba_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_samba_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_samba_user_create.rst


sudo
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_sudo.rst

.. note:: This lightweight resource is part of the ``sudo`` cookbook (http://community.opscode.com/cookbooks/sudo).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_sudo_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_sudo_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_sudo_mode_default.rst

.. include:: ../../step_lwrp/step_lwrp_sudo_mode_template.rst



supervisor_fcgi
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


supervisor_group
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


supervisor_service
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_supervisor_service_enable.rst




transmission_torrent_file
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file.rst

.. note:: This lightweight resource is part of the ``transmission`` cookbook (http://community.opscode.com/cookbooks/transmission).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_transmission_torrent_file_download_iso.rst

.. include:: ../../step_lwrp/step_lwrp_transmission_torrent_file_download_iso_continue_seeding.rst


users_manage
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_users_manage.rst

.. note:: This lightweight resource is part of the ``users`` cookbook (http://community.opscode.com/cookbooks/users).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_users_manage_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_users_manage_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_users_manage_create.rst

.. include:: ../../step_lwrp/step_lwrp_users_manage_remove.rst



webpi_product
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product.rst

.. note:: This lightweight resource is part of the ``webpi`` cookbook (http://community.opscode.com/cookbooks/webpi).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_powershell.rst

.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_iis.rst



windows_auto_run
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_auto_run_at_login.rst

windows_batch
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_batch_run.rst

windows_feature
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_feature_enable.rst

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst


windows_package
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_package.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_package_install_putty.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_7zip.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_7zip.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_notepad_plusplus.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_firefox.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_vlc.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_google_chrome.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_google_chrome.rst


windows_path
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_path.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_path_add.rst

.. include:: ../../step_lwrp/step_lwrp_windows_path_remove.rst



windows_reboot
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_reboot_schedule.rst

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_cancel.rst


windows_registry
-----------------------------------------------------
.. warning:: This lightweight resource is being replaced by a resource for |chef 11|. See: http://docs.opscode.com/resource_registry_key.html for preview details about the resource. Also, six helper methods for registry keys will be added to the Recipe DSL. These will be called: ``registry_data_exists?``, ``registry_get_subkeys``, ``registry_get_values``, ``registry_has_subkeys?``, ``registry_key_exists?``, and ``registry_value_exists?``.

.. include:: ../../includes_lwrp/includes_lwrp_windows_registry.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_registry_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_registry_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_registry_enable_remote_desktop.rst

.. include:: ../../step_lwrp/step_lwrp_windows_registry_match_proxy.rst


windows_shortcut
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


windows_zipfile
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_remote.rst

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_local.rst


yum_key
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_key.rst

.. note:: This lightweight resource is part of the ``yum`` cookbook (http://community.opscode.com/cookbooks/yum).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_key_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_key_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_yum_key_add.rst

.. include:: ../../step_lwrp/step_lwrp_yum_key_remove.rst


yum_repository
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository.rst

.. note:: This lightweight resource is part of the ``yum`` cookbook (http://community.opscode.com/cookbooks/yum).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_yum_repository_add.rst

.. include:: ../../step_lwrp/step_lwrp_yum_repository_remove.rst


zenoss_zenbatchload
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenbatchload.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenbatchload_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenbatchload_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenmd
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenmd.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenmd_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenmd_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenpack
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpack.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpack_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpack_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenpatch
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpatch.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpatch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_zenoss_zenpatch_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.






