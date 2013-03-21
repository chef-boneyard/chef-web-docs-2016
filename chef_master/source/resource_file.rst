=====================================================
file
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_file.rst

.. note:: |note file resource use other resources|

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_file_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_file_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_file_attributes.rst

Windows File Security
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_windows_security_inherits.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_file_providers.rst

Examples
=====================================================
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