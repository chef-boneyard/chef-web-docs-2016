=====================================================
dpkg_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_dpkg.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_dpkg_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_dpkg_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_dpkg_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_dpkg_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   dpkg_package "name of package" do
     action :install
   end
