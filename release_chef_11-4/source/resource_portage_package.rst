=====================================================
portage_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_portage.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_portage_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_portage_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_portage_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_portage_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   portage_package "name of package" do
     action :install
   end
