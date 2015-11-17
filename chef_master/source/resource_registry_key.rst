=====================================================
registry_key
=====================================================

.. include:: ../../includes_resources/includes_resource_registry_key.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_syntax.rst

Registry Key Path Separators
-----------------------------------------------------
.. include:: ../../includes_windows/includes_windows_registry_key_backslashes.rst

Recipe DSL Methods
-----------------------------------------------------
The following methods can be used to interact with |windows| registry keys.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Methods
     - Description
   * - `registry_data_exists? <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-data-exists>`__
     - Find out if a registry key contains data.
   * - `registry_get_subkeys <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-get-subkeys>`__
     - Get a list of sub-keys for a registry setting.
   * - `registry_get_values <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-get-values>`__
     - Get values (name, type, and data) for a given registry key.
   * - `registry_has_subkeys? <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-has-subkeys>`__
     - Find out if a registry key has one (or more) sub-keys.
   * - `registry_key_exists? <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-key-exists>`__
     - Find out if a registry key exists.
   * - `registry_value_exists? <http://docs.chef.io/release/12-0/dsl_recipe.html#registry-value-exists>`__
     - Find out if a registry key has values set (name, type, and data).

.. note:: The recommended order in which registry key-specific methods should be used within a recipe is: ``key_exists?``, ``value_exists?``, ``data_exists?``, ``get_values``, ``has_subkeys?``, and then ``get_subkeys``.

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_actions.rst

Properties
=====================================================
.. include:: ../../includes_resources/includes_resource_registry_key_attributes.rst

.. 
.. Providers
.. =====================================================
.. .. include:: ../../includes_resources_common/includes_resources_common_provider.rst
.. 
.. .. include:: ../../includes_resources_common/includes_resources_common_provider_attributes.rst
.. 
.. .. include:: ../../includes_resources/includes_resource_registry_key_providers.rst
.. 

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

**Set the name of a registry key to "(Default)"**

.. include:: ../../step_resource/step_resource_registry_key_set_default.rst