=====================================================
registry_key
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_registry_key.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_syntax.rst

Registry Key Path Separators
-----------------------------------------------------
.. include:: ../../includes_resources_common/includes_resources_common_windows_registry_key_path_separators.rst

Recipe DSL Methods
-----------------------------------------------------
The following methods can be used to interact with |windows| registry keys.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Methods
     - Description
   * - :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>`
     - Find out if a registry key contains data.
   * - :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>`
     - Get a list of sub-keys for a registry setting.
   * - :doc:`registry_get_values </dsl_recipe_method_registry_get_values>`
     - Get values (name, type, and data) for a given registry key.
   * - :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>`
     - Find out if a registry key has one (or more) sub-keys.
   * - :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>`
     - Find out if a registry key exists.
   * - :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>`
     - Find out if a registry key has values set (name, type, and data).

.. note:: The recommended order in which registry key-specific methods should be used within a recipe is: ``key_exists?``, ``value_exists?``, ``data_exists?``, ``get_values``, ``has_subkeys?``, and then ``get_subkeys``.

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_attributes_provider.rst

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