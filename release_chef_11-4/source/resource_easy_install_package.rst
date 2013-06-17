=====================================================
easy_install_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_easy_install.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_easy_install_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_easy_install_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_easy_install_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_easy_install_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   easy_install_package "name of package" do
     action :install
   end
