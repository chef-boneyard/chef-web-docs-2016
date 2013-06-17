=====================================================
macports_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_macports.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_macports_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_macports_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_macports_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_macports_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   macports_package "name of package" do
     action :install
   end
