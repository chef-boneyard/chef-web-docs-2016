=====================================================
freebsd_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_freebsd.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_freebsd_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_freebsd_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_freebsd_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_freebsd_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   freebsd_package "name of package" do
     action :install
   end
