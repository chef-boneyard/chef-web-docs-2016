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

Inline Resources
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_inline_compile_mode.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_inline_compile_mode_with.rst

Lightweight Resources and Providers
=====================================================
The following groups of lightweight resources are available in open source cookbooks that are provided by |company_name|:

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


Some of the cookbooks contain more than one lightweight resource. Each lightweight resource is described individually in the following sections.


apt_preference
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference.rst

.. note:: This lightweight resource is part of the |cookbook apt| cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``apt_preference`` resource:

**Pin a package**

.. include:: ../../step_lwrp/step_lwrp_apt_preference_pin.rst

**Unpin a package**

.. include:: ../../step_lwrp/step_lwrp_apt_preference_unpin.rst

apt_repository
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository.rst

.. note:: This lightweight resource is part of the |cookbook apt| cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``apt_repository`` resource:

**Add the CloudKick repository**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_cloudkick.rst

**Add opscode.list**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list.rst

**Add hardy-rsyslog-ppa.list**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_ppa_list.rst

**Add Zenoss**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_zenoss.rst

**Remove Zenoss**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_remove_zenoss.rst

aws_ebs_volume
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume.rst

.. note:: This lightweight resource is part of the |cookbook aws| cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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
The following examples show how to use the ``aws_ebs_volume`` resource:

**Create a volume, attach to a node**

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

**Create a volume from an existing snapshot**

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

**Prune all snapshots (except for one)**

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_prune_snapshots.rst

aws_elastic_ip
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip.rst

.. note:: This lightweight resource is part of the |cookbook aws| cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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
The following examples show how to use the ``aws_elastic_ip`` resource:

**Associate an IP address**

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_associate.rst

**Disassociate an IP address**

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_disassociate.rst

aws_elastic_lb
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb.rst

.. note:: This lightweight resource is part of the |cookbook aws| cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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
The following example shows how to use the ``aws_elastic_lb`` resource:

**Add a load balancer**

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_lb_add.rst


aws_resource_tag
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag.rst

.. note:: This lightweight resource is part of the |cookbook aws| cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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
The following examples show how to use the ``aws_resource_tag`` resource:

**Assign tags to a node**

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_node.rst

**Assign tags to resources**

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_resources.rst



bluepill_service
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service.rst

.. note:: This lightweight resource is part of the |cookbook bluepill| cookbook (http://community.opscode.com/cookbooks/bluepill).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_bluepill_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``bluepill_service`` resource:

**Use the bluepill_service resource**

.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_blupill_service.rst

**Use as part of the service resource**

.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_resource.rst

**Use as part of the template resource**

.. include:: ../../step_lwrp/step_lwrp_bluepill_service_use_resource_template.rst

chef_handler
-----------------------------------------------------
.. include:: ../../includes_handler/includes_handler.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

.. note:: This lightweight resource is part of the |cookbook chef_handler| cookbook (http://community.opscode.com/cookbooks/chef_handler).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``chef_handler`` resource:

**Enable the CloudkickHandler handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_cloudkickhandler.rst

**Enable handlers during the compile phase**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_during_compile.rst

**Handle only exceptions**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_exceptions_only.rst

**Register the JsonFile handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_register.rst

daemontools_service
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service.rst

.. note:: This lightweight resource is part of the |cookbook daemontools| cookbook (http://community.opscode.com/cookbooks/daemontools).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_daemontools_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``daemontools_service`` resource:

**Set up a directory using a template and a script**

.. include:: ../../step_lwrp/step_lwrp_daemontools_service_setup_directory.rst

djbdns_rr
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr.rst

.. note:: This lightweight resource is part of the |cookbook djbdns| cookbook (http://community.opscode.com/cookbooks/djbdns).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``djbdns_rr`` resource:

**Configure Tinydns**

.. include:: ../../step_lwrp/step_lwrp_djbdns_rr_configure_for_tinydns.rst

dmg_package
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package.rst

.. note:: This lightweight resource does not do full package management for |mac os x| applications, as they have different installed artifacts.

.. note:: This lightweight resource is part of the |cookbook dmg| cookbook (http://community.opscode.com/cookbooks/dmg).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``dmg_package`` resource:

**Install Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_google_chrome.rst

**Install a previously-downloaded application**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_already_downloaded_app.rst

**Install DropBox**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_dropbox.rst

**Install MacIrssi**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_macirssi.rst

**Install Tunnelblick.app**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_tunnelblick.rst

dynect_rr
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr.rst

.. note:: This lightweight resource is part of the |cookbook dynect| cookbook (http://community.opscode.com/cookbooks/dynect). The ``dynect_rest`` |ruby| |gem| is required.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_dynect_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``dynect_rr`` resource:

**Create a record**

.. include:: ../../step_lwrp/step_lwrp_dynect_rr_create_record.rst

firewall
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default.rst

.. note:: This lightweight resource is part of the |cookbook firewall| cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``firewall`` resource:

**Enable the default firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_enable.rst

firewall_rule
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule.rst

.. note:: This lightweight resource is part of the |cookbook firewall| cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_firewall_rule_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``firewall_rule`` resource:

**Open a port, enable a firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_ssh.rst

**Open a port, insert a rule, enable a firewall**

.. include:: ../../step_lwrp/step_lwrp_firewall_rule_open_tcp.rst


freebsd_port_options
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options.rst

.. note:: This lightweight resource is part of the |cookbook freebsd| cookbook (http://community.opscode.com/cookbooks/freebsd).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_freebsd_port_options_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``freebsd_port_options`` resource:

**Read the default options**

.. include:: ../../step_lwrp/step_lwrp_freebsd_port_options_read.rst

**Write the default options**

.. include:: ../../step_lwrp/step_lwrp_freebsd_port_options_write.rst

gunicorn_config
-----------------------------------------------------
|gunicorn desc|

.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config.rst

.. note:: This lightweight resource is part of the |cookbook gunicorn| cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``gunicorn_config`` resource:

**Create a configuration file**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_create.rst

**Edit worker-related values**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_edit_values.rst

**Use a pre_fork server hook**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_sleep_before_fork.rst


gunicorn_install
-----------------------------------------------------
|gunicorn desc|

.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install.rst

.. note:: This lightweight resource is part of the |cookbook gunicorn| cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``gunicorn_install`` resource:

**Install to a specified virtual environment**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_install_virtual_env.rst


homebrew
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_homebrew_tap.rst

.. note:: This lightweight resource is part of the |cookbook homebrew| cookbook (http://community.opscode.com/cookbooks/homebrew).

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
The following examples show how to use the ``homebrew`` resource:

**Install MySQL**

.. include:: ../../step_lwrp/step_lwrp_homebrew_install_mysql.rst

**Tap a repository**

.. include:: ../../step_lwrp/step_lwrp_homebrew_tap_repository.rst

**Untap a repository**

.. include:: ../../step_lwrp/step_lwrp_homebrew_untap_repository.rst

**Use the Homebrew provider**

.. include:: ../../step_lwrp/step_lwrp_homebrew_use_provider.rst


iis_app
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_app.rst

.. note:: This lightweight resource is part of the |cookbook iis| cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``iis_app`` resource:

**Create an application**

.. include:: ../../step_lwrp/step_lwrp_iis_app_create.rst


iis_config
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_config.rst

.. note:: This lightweight resource is part of the |cookbook iis| cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``iis_config`` resource:

**Load an array of commands**

.. include:: ../../step_lwrp/step_lwrp_iis_config_load_array_of_commands.rst

**Set up logging**

.. include:: ../../step_lwrp/step_lwrp_iis_config_set_up_logging.rst

iis_module
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_module.rst

.. note:: This lightweight resource is part of the |cookbook iis| cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``iis_module`` resource:

**Add a module**

.. include:: ../../step_lwrp/step_lwrp_iis_module_add.rst

iis_pool
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool.rst

.. note:: This lightweight resource is part of the |cookbook iis| cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``iis_pool`` resource:

**Create an application pool**

.. include:: ../../step_lwrp/step_lwrp_iis_pool_create.rst

iis_site
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_iis_site.rst

.. note:: This lightweight resource is part of the |cookbook iis| cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``iis_site`` resource:

**Start, then map to domain**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_domain.rst

**Start, then map to location**

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_location.rst

**Stop, then delete a site**

.. include:: ../../step_lwrp/step_lwrp_iis_site_stop.rst


maven
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_maven.rst

.. note:: This lightweight resource is part of the |cookbook maven| cookbook (http://community.opscode.com/cookbooks/maven).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_maven_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_maven_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``maven`` resource:

**Install an artifact**

.. include:: ../../step_lwrp/step_lwrp_maven_install.rst


nagios_nrpecheck
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck.rst

.. note:: This lightweight resource is part of the |cookbook nagios| cookbook (http://community.opscode.com/cookbooks/nagios).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_nagios_nrpecheck_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``nagios_nrpecheck`` resource:

**Create a definition**

.. include:: ../../step_lwrp/step_lwrp_nagios_nrpecheck_define.rst

**Remove a definition**

.. include:: ../../step_lwrp/step_lwrp_nagios_nrpecheck_remove.rst


pacman_aur
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur.rst

.. note:: This lightweight resource is part of the |cookbook pacman| cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_aur_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``pacman_aur`` resource:

**Use a simple package**

.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_simple_package.rst

**Use a custom package**

.. include:: ../../step_lwrp/step_lwrp_pacman_aur_use_custom_package.rst

pacman_group
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group.rst

.. note:: This lightweight resource is part of the |cookbook pacman| cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_pacman_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``pacman_group`` resource:

**Remove a group**

.. include:: ../../step_lwrp/step_lwrp_pacman_group_base_devel.rst

php_pear
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default.rst

.. note:: This lightweight resource is part of the |cookbook php| cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``php_pear`` resource:

**Install extensions for Alternative PHP Cache**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_apc_pecl.rst

**Install the Horde_Url beta**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_horde_beta.rst

**Install extensions for MongoDB**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_mongodb_pecl.rst

**Install a specific version**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_specific_version.rst

**Install the YAML PEAR**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_yaml.rst

**Upgrade a PEAR**

.. include:: ../../step_lwrp/step_lwrp_php_pear_upgrade.rst

php_pear_channel
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel.rst

.. note:: This lightweight resource is part of the |cookbook php| cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``php_pear_channel`` resource:

**Discover horde**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_discover_horde.rst

**Download file, add to channel**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_download_then_add.rst

**Update main channels**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_update_main_channels.rst



powershell
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_powershell.rst

.. note:: This lightweight resource is part of the |cookbook powershell| cookbook (http://community.opscode.com/cookbooks/powershell).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_powershell_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_powershell_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``powershell`` resource:

**Change a hostname**

.. include:: ../../step_lwrp/step_lwrp_powershell_change_hostname.rst

**Pass an environment variable**

.. include:: ../../step_lwrp/step_lwrp_powershell_pass_env_variable.rst

**Set the cwd attribute**

.. include:: ../../step_lwrp/step_lwrp_powershell_set_cwd_attribute.rst

**Use the cwd attribute**

.. include:: ../../step_lwrp/step_lwrp_powershell_use_cwd.rst

**Write to an interpolated path**

.. include:: ../../step_lwrp/step_lwrp_powershell_write_to_interpolated_path.rst


python_pip
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_pip.rst

.. note:: This lightweight resource is part of the |cookbook python| cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``python_pip`` resource:

**Install Gunicorn**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_gunicorn.rst

**Install a specific version of pip**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_specific_pip.rst

**Target a Gunicorn virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_pip_target_virtualenv.rst

**Use with the package resource**

.. include:: ../../step_lwrp/step_lwrp_python_pip_use_with_core_package_resource.rst

python_virtualenv
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv.rst

.. note:: This lightweight resource is part of the |cookbook python| cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``python_virtualenv`` resource:

**Create a virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_python.rst

**Create a virtual environment owned by an Ubuntu user**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_ubuntu.rst


rabbitmq_plugin
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin.rst

.. note:: This lightweight resource is part of the |cookbook rabbitmq| cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``rabbitmq_plugin`` resource:

**Enable a plugin**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_enable.rst

**Disable a plugin**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_disable.rst

rabbitmq_user
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user.rst

.. note:: This lightweight resource is part of the |cookbook rabbitmq| cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``rabbitmq_user`` resource:

**Add a user**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_add.rst

**Delete a user**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_delete.rst

**Set user permissions**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_set_permissions.rst


rabbitmq_vhost
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost.rst

.. note:: This lightweight resource is part of the |cookbook rabbitmq| cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``rabbitmq_vhost`` resource:

**Add a virtual host**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_vhost_add.rst


riak_cluster
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster.rst

.. note:: This lightweight resource is part of the |cookbook riak| cookbook (http://community.opscode.com/cookbooks/riak).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_riak_cluster_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``riak_cluster`` resource:

**Add a node to a cluster**

.. include:: ../../step_lwrp/step_lwrp_riak_cluster_add_to_cluster.rst


samba_user
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_samba_user.rst

.. note:: This lightweight resource is part of the |cookbook samba| cookbook (http://community.opscode.com/cookbooks/samba).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_samba_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_samba_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``samba_user`` resource:

**Create a user**

.. include:: ../../step_lwrp/step_lwrp_samba_user_create.rst


sudo
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_sudo.rst

.. note:: This lightweight resource is part of the |cookbook sudo| cookbook (http://community.opscode.com/cookbooks/sudo).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_sudo_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_sudo_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``sudo`` resource:

**Use default mode**

.. include:: ../../step_lwrp/step_lwrp_sudo_mode_default.rst

**Use template mode**

.. include:: ../../step_lwrp/step_lwrp_sudo_mode_template.rst



supervisor_fcgi
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi.rst

.. note:: This lightweight resource is part of the |cookbook supervisor| cookbook (http://community.opscode.com/cookbooks/supervisor).

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

.. note:: This lightweight resource is part of the |cookbook supervisor| cookbook (http://community.opscode.com/cookbooks/supervisor).

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

.. note:: This lightweight resource is part of the |cookbook supervisor| cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``supervisor_service`` resource:

**Enable a service**

.. include:: ../../step_lwrp/step_lwrp_supervisor_service_enable.rst




transmission_torrent_file
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file.rst

.. note:: This lightweight resource is part of the |cookbook transmission| cookbook (http://community.opscode.com/cookbooks/transmission).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_transmission_torrent_file_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``transmission_torrent_file`` resource:

**Download a file**

.. include:: ../../step_lwrp/step_lwrp_transmission_torrent_file_download_iso.rst

**Download a file, continue seeding**

.. include:: ../../step_lwrp/step_lwrp_transmission_torrent_file_download_iso_continue_seeding.rst


users_manage
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_users_manage.rst

.. note:: This lightweight resource is part of the |cookbook users| cookbook (http://community.opscode.com/cookbooks/users).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_users_manage_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_users_manage_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``users_manage`` resource:

**Create users**

.. include:: ../../step_lwrp/step_lwrp_users_manage_create.rst

**Remove users**

.. include:: ../../step_lwrp/step_lwrp_users_manage_remove.rst



webpi_product
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product.rst

.. note:: This lightweight resource is part of the |cookbook webpi| cookbook (http://community.opscode.com/cookbooks/webpi).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``webpi_product`` resource:

**Install PowerShell**

.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_powershell.rst

**Install IIS**

.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_iis.rst



windows_auto_run
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``windows_auto_run`` resource:

**Run a program at login**

.. include:: ../../step_lwrp/step_lwrp_windows_auto_run_at_login.rst

windows_batch
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use the ``windows_batch`` resource:

**Run a batch file**

.. include:: ../../step_lwrp/step_lwrp_windows_batch_run.rst

windows_feature
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

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
The following examples show how to use the ``windows_feature`` resource:

**Enable a feature**

.. include:: ../../step_lwrp/step_lwrp_windows_feature_enable.rst

**Disable a feature**

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst


windows_package
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_package.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``windows_package`` resource:

**Install PuTTY**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_putty.rst

**Install 7-Zip**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_7zip.rst

**Remove 7-Zip**

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_7zip.rst

**Install Notepad++**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_notepad_plusplus.rst

**Install Firefox silently**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_firefox.rst

**Install the VLC media player**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_vlc.rst

**Install Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_google_chrome.rst

**Remove Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_google_chrome.rst


windows_path
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_path.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``windows_path`` resource:

**Add an item to the system path**

.. include:: ../../step_lwrp/step_lwrp_windows_path_add.rst

**Remove an item from the system path**

.. include:: ../../step_lwrp/step_lwrp_windows_path_remove.rst



windows_reboot
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``windows_reboot`` resource:

**Schedule a reboot**

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_schedule.rst

**Cancel a reboot**

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_cancel.rst

windows_registry
-----------------------------------------------------
.. warning:: This resource has been added to the |chef client|, starting with |chef 11|. See: `registry_key <http://docs.opscode.com/resource_registry_key.html>`_ for details about the resource. Also, six helper methods for registry keys have been added to the Recipe DSL: `registry_data_exists? <http://docs.opscode.com/dsl_recipe_method_registry_data_exists.html>`_, `registry_get_subkeys <http://docs.opscode.com/dsl_recipe_method_registry_get_subkeys.html>`_, `registry_get_values <http://docs.opscode.com/dsl_recipe_method_registry_get_values.html>`_, `registry_has_subkeys? <http://docs.opscode.com/dsl_recipe_method_registry_has_subkeys.html>`_, `registry_key_exists? <http://docs.opscode.com/dsl_recipe_method_registry_key_exists.html>`_, and `registry_value_exists? <http://docs.opscode.com/dsl_recipe_method_registry_value_exists.html>`_.

windows_shortcut
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut.rst

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

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

.. note:: This lightweight resource is part of the |cookbook windows| cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``windows_zipfile`` resource:

**Unzip a remote file**

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_remote.rst

**Unzip a local file**

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_local.rst


|yum| Repository Cookbooks
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_repos.rst

yum_globalconfig
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``yum_globalconfig`` resource:

**Render template with global configuration parameters**

.. include:: ../../step_lwrp/step_lwrp_yum_globalconfig_add.rst


yum_repository
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository.rst

.. note:: This lightweight resource is part of the |cookbook yum| cookbook (http://community.opscode.com/cookbooks/yum).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following examples show how to use the ``yum_repository`` resource:

**Create a repository**

.. include:: ../../step_lwrp/step_lwrp_yum_repository_add.rst

**Delete a repository**

.. include:: ../../step_lwrp/step_lwrp_yum_repository_delete.rst

