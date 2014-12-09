=====================================================
Notes for |chef client| Upgrades 
=====================================================

The following sections contain more information about the upgrade process from earlier versions of the |chef client| to the |chef client| 12 release.

Notes About Cookbooks
=====================================================
The following cookbooks are being updated by |company_name| to ensure compatibility with |chef client| 12:

* ``minitest-chef-handler``
* ``windows``
* ``knife-windows``

|resource execute| Resource, ``path`` Attribute
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst

``Chef::Provider`` Changes
=====================================================
.. include:: ../../includes_libraries/includes_libraries_syntax_lwrpbase_example.rst

``node.default!``  Changes
=====================================================
.. include:: ../../includes_attributes/includes_attributes_type_force_default.rst

``node.override!`` Changes
=====================================================
.. include:: ../../includes_attributes/includes_attributes_type_force_override.rst