=====================================================
pacman_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_package_pacman.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_pacman_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_pacman_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_pacman_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_pacman_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. code-block:: ruby

   pacman_package "name of package" do
     action :install
   end
