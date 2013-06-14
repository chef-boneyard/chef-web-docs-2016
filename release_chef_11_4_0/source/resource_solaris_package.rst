=====================================================
solaris_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_solaris.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_solaris_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_solaris_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_solaris_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_solaris_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   solaris_package "name of package" do
     action :install
   end
