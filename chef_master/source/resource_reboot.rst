=====================================================
reboot
=====================================================

.. warning:: This resource will be available in an upcoming |chef| release.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_service_reboot.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_service_reboot_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_service_reboot_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_service_reboot_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_provider.rst

.. include:: ../../includes_resources_common/includes_resources_common_provider_attributes.rst

.. include:: ../../includes_resources/includes_resource_service_reboot_providers.rst

Examples
=====================================================
|generic resource statement|

**Reboot a node immediately**

.. include:: ../../step_resource/step_resource_service_reboot_immediately.rst

**Reboot a node at the end of a chef-client run**

.. include:: ../../step_resource/step_resource_service_reboot_request.rst

**Cancel a reboot**

.. include:: ../../step_resource/step_resource_service_reboot_cancel.rst