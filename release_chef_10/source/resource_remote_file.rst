=====================================================
remote_file
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_11-4_remote_file.rst

.. note:: |note remote_file resource fetch from files directory|

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_file_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_11-4_remote_file_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_file_attributes.rst

``source`` Attribute Values
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_10-latest_remote_file_attributes_source_as_string.rst

Windows File Security
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_windows_security.rst

**Access Control Lists (ACLs)**

.. include:: ../../includes_resources_common/includes_resources_common_windows_security_acl.rst

**Inheritance**

.. include:: ../../includes_resources_common/includes_resources_common_windows_security_inherits.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_remote_file_providers.rst

Examples
=====================================================
|generic resource statement|

**Transfer a file from a URL**

.. include:: ../../step_resource/step_resource_remote_file_transfer_from_url.rst

.. The "Transfer a file only when the source has changed" example is deprecated in chef-client 11-6

**Transfer a file only when the source has changed**

.. include:: ../../step_resource/step_resource_remote_file_transfer_remote_source_changes.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

**Store certain settings**

.. include:: ../../step_resource/step_resource_remote_file_store_certain_settings.rst

**Use the platform_family? method**

.. include:: ../../step_resource/step_resource_remote_file_use_platform_family.rst

