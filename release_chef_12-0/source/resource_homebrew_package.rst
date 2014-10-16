.. THIS PAGE IS IDENTICAL TO docs.getchef.com/resource_homebrew_package.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.0

=====================================================
homebrew_package
=====================================================

.. warning:: This resource will be available in an upcoming |chef| release.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../release_chef_12-0/includes_resource_package_homebrew.rst

.. note:: |note resource_based_on_package|

Syntax
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_syntax.rst

Actions
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_actions.rst

Attributes
=====================================================
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_provider.rst

.. include:: ../../includes_resources_common/includes_resources_common_provider_attributes.rst

.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a package**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_install.rst

**Specify the Homebrew user with a UUID**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_uuid.rst

**Specify the Homebrew user with a string**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_string.rst