=====================================================
mdadm
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_mdadm.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_mdadm_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_mdadm_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_mdadm_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_mdadm_providers.rst

Examples
=====================================================
|generic resource statement|

**Create and assemble a RAID 1 array**

.. include:: ../../step_resource/step_resource_mdadm_assemble_raid_array.rst