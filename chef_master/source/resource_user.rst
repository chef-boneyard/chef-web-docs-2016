=====================================================
user
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_user.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_user_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_user_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_user_attributes.rst

Supported Features
=====================================================
.. include:: ../../includes_resources/includes_resource_user_supported_features.rst

Password Shadow Hash
=====================================================
.. include:: ../../includes_resources/includes_resource_user_password_shadow_hash.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_user_providers.rst

Examples
=====================================================
|generic resource statement|

**Create a random user**

.. include:: ../../step_resource/step_resource_user_create_random.rst

**Create a system user**

.. include:: ../../step_resource/step_resource_user_create_system.rst

**Create a system user with a variable**

.. include:: ../../step_resource/step_resource_user_create_system_user_with_variable.rst