=====================================================
remote_directory
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_remote_directory.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_directory_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_directory_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_directory_attributes.rst

Windows File Security
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security_inherits.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_directory_providers.rst

Examples
=====================================================
|generic resource statement|

**Recursively transfer a directory from a remote location**

.. include:: ../../step_resource/step_resource_remote_directory_recursive_transfer.rst

**Use with the chef_handler lightweight resource**

.. include:: ../../step_resource/step_resource_remote_directory_report_handler.rst