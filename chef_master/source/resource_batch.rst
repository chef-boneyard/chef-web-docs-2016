=====================================================
batch
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_batch.rst

.. warning:: This resource will be included in an upcoming version of |chef|. The details about this resource will likely be available before that version of |chef| is released, so please check back. The short version: the ``windows_batch`` lightweight resource is being moved to a core |chef| resource. The documentation about that change will be on this page.

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_batch_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_batch_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_batch_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_batch_providers.rst

Examples
=====================================================
|generic resource statement|

**xxxxx**

.. include:: ../../step_resource/step_resource_batch_xxxxx.rst
