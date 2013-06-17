=====================================================
smartos_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_smartos.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_smartos_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_smartos_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_smartos_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_smartos_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   smartos_package "name of package" do
     action :install
   end
