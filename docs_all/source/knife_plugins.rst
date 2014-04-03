=====================================================
Knife Cloud Plugins Reference
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife.rst

Working with Knife
=====================================================
.. include:: ../../includes_knife/includes_knife_using.rst

JSON Data Format
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_json.rst

Using Quotes
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_quotes.rst

Wildcard Search
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_verbs_wildcard.rst

Plug-ins
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_plugins.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_syntax.rst

Common Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_common_options.rst

Authenticated API Requests
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_using_authenticated_requests.rst

Plugins
=====================================================

The following plugins for |knife| are provided by |company_name|:

* knife azure
* knife bluebox
* knife bluelock
* knife ec2
* knife eucalyptus
* knife google
* knife hp
* knife linode
* knife openstack
* knife rackspace
* knife terremark
* knife vcloud
* knife windows


knife azure
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure.rst

.. note:: This plugin requires the |subcommand knife windows| plugin to be present on the same machine.

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_azure_install_rubygem.rst

Generate the Management Certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_certificate.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Provision an instance using new hosted service and storage accounts**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_create_use_existing_hosted_service.rst

**Provision an instance using new hosted service and storage accounts**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_create_use_new_hosted_service.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_delete.rst

server describe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View role details**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_describe.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_options.rst


knife bluebox
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_bluebox_install_rubygem.rst

images list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_images_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_images_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_bluebox_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluebox_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|


knife bluelock
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_bluelock_install_rubygem.rst

images list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_bluelock_server_list_options.rst


knife ec2
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2.rst

.. note:: This plugin requires the |subcommand knife windows| plugin to be present on the same machine.

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_install_rubygem.rst

instance data
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Launch an instance which has a single Chef role**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_create_instance_with_single_role.rst

**Launch an instance which has many Chef roles**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_create_instance_with_many_roles.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_ec2_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_options.rst


knife eucalyptus
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_eucalyptus_install_rubygem.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of flavors**

.. include:: ../../step_plugin_knife/step_plugin_knife_eucalyptus_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of images**

.. include:: ../../step_plugin_knife/step_plugin_knife_eucalyptus_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_eucalyptus_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_eucalyptus_server_list_options.rst


knife google
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_google_install_rubygem.rst

Bootstrap and SSH
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_bootstrap_and_ssh_keys.rst

disk create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

disk delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

disk list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_disk_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of disks**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_disk_list.rst

project list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_project_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_project_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_project_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

region list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_region_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_region_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_region_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Create an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_server_create.rst

**Create a Jenkins continuous integration pipeline**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_server_create_jenkins.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete every chef-client and node**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_server_delete_purge.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**List specific instances**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_server_list_instances.rst

**List all servers**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_server_list_servers.rst

setup
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup.rst

.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_plugin.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_setup_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

zone list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_google_zone_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of zones**

.. include:: ../../step_plugin_knife/step_plugin_knife_google_zone_list.rst


knife hp
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_hp_install_rubygem.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of flavors**

.. include:: ../../step_plugin_knife/step_plugin_knife_hp_flavor_list.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of images**

.. include:: ../../step_plugin_knife/step_plugin_knife_hp_image_list.rst


server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Provision a server, then run a bootstrap operation**

.. include:: ../../step_plugin_knife/step_plugin_knife_hp_server_create.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete a server**

.. include:: ../../step_plugin_knife/step_plugin_knife_hp_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_hp_server_list_options.rst


knife linode
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_linode_install_rubygem.rst

datacenter list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_datacenter_list_options.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_flavor_list_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_image_list_options.rst

kernel list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_kernel_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

server reboot
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_reboot.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_server_reboot_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

stackscript list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_stackscript_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_linode_stackscript_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|


knife openstack
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_openstack_install_rubygem.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_flavor_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of flavors**

.. include:: ../../step_plugin_knife/step_plugin_knife_openstack_flavor_list.rst


group list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_group_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_group_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_group_list_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of images**

.. include:: ../../step_plugin_knife/step_plugin_knife_openstack_image_list.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_create_options.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_delete_options.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack_server_list_options.rst


knife rackspace
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_rackspace_install_rubygem.rst

flavor list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_flavor_list_options.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Launch an instance which has a single Chef role**

.. include:: ../../step_plugin_knife/step_plugin_knife_rackspace_server_create_instance_with_single_role.rst

**Launch an instance which has many Chef roles**

.. include:: ../../step_plugin_knife/step_plugin_knife_rackspace_server_create_instance_with_many_roles.rst


server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_rackspace_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_rackspace_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View a list of servers**

.. include:: ../../step_plugin_knife/step_plugin_knife_rackspace_server_list.rst


knife terremark
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_terremark_install_rubygem.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Create an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_terremark_server_create_instance.rst

**Create an instance with specific parameters**

.. include:: ../../step_plugin_knife/step_plugin_knife_terremark_server_create_instance_with_parameters.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|no_options|

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete every server instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_terremark_server_delete.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**List all server instances**

.. include:: ../../step_plugin_knife/step_plugin_knife_terremark_server_list.rst




knife vcloud
-----------------------------------------------------

.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_vcloud_install_rubygem.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_image_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

network list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_network_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_network_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_network_list_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.
   

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_vcloud_server_list_options.rst













knife windows
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_windows_install_rubygem.rst

Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_requirements.rst

Domain Authentication
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_domain_authentication.rst

bootstrap windows ssh
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Bootstrap a Windows machine using SSH**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_bootstrap_ssh.rst

bootstrap windows winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Bootstrap a Windows machine using Windows Remote Management**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_bootstrap_winrm.rst

winrm
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Find Uptime for Web Servers**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_winrm_find_uptime.rst

**Force a chef-client run**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_winrm_force_chef_run.rst
