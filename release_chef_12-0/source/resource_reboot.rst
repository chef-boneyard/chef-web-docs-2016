.. THIS PAGE IS IDENTICAL TO docs.getchef.com/resource_homebrew_package.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.0

=====================================================
reboot
=====================================================

.. warning:: This resource will be available in an upcoming |chef| release.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../release_chef_12-0/includes_resource_service_reboot.rst

Syntax
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_syntax.rst

Actions
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_actions.rst

Attributes
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_provider.rst

.. include:: ../../includes_resources_common/includes_resources_common_provider_attributes.rst

.. include:: ../../release_chef_12-0/includes_resource_service_reboot_providers.rst

Examples
=====================================================
|generic resource statement|

**Reboot a node immediately**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_immediately.rst

**Reboot a node at the end of a chef-client run**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_request.rst

**Cancel a reboot**

.. include:: ../../release_chef_12-0/step_resource_service_reboot_cancel.rst