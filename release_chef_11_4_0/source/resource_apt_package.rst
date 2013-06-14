=====================================================
apt_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_apt.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_apt_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_apt_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_apt_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_apt_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   apt_package "name of package" do
     action :install
   end
