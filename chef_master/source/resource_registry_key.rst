=====================================================
registry_key
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_registry_key.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_syntax.rst

Registry Key Path Separators
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_windows_registry_key_path_separators.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_providers.rst

Examples
=====================================================
|generic resource statement|

**Create a registry key**

.. include:: ../../step_resource/step_resource_registry_key_create.rst

**Delete a registry key value**

.. include:: ../../step_resource/step_resource_registry_key_delete_value.rst

**Delete a registry key and its subkeys, recursively**

.. include:: ../../step_resource/step_resource_registry_key_delete_recursively.rst

**Use re-directed keys**

.. include:: ../../step_resource/step_resource_registry_key_redirect.rst

**Set proxy settings to be the same as those used by the chef-client**

.. include:: ../../step_resource/step_resource_registry_key_set_proxy_settings_to_same_as_chef_client.rst