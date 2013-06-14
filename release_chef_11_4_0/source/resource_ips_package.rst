=====================================================
ips_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_ips.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_ips_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_ips_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_ips_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_ips_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   ips_package "name of package" do
     action :install
   end
