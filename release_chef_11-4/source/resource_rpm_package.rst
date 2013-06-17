=====================================================
rpm_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_rpm.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_rpm_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_rpm_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_rpm_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_rpm_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   rpm_package "name of package" do
     action :install
   end
