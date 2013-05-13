=====================================================
gem_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. warning:: |note chef_gem vs gem_package|

.. include:: ../../includes_resources/includes_resource_package_gem.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_package_gem_syntax.rst

Gem Package Options
=====================================================
.. include:: ../../includes_resources/includes_resource_package_options.rst

Specify with Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_hash.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_hash_options.rst

Specify with String
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_string.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_options_string.rst

Specify with .gemrc File
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_options_gemrc.rst

**Example**

.. include:: ../../step_resource/step_resource_package_install_gem_with_gemrc.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_package_gem_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_package_gem_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_package_gem_providers.rst

Examples
=====================================================
|generic resource statement|

**Install a gems file from the local file system**

.. include:: ../../step_resource/step_resource_package_install_gems_from_local.rst

**Use the ignore_failure common attribute**

.. include:: ../../step_resource/step_resource_package_use_ignore_failure_attribute.rst

