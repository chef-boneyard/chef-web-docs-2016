=====================================================
mount
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_mount.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_mount_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_mount_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_mount_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_mount_providers.rst

Examples
=====================================================
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

