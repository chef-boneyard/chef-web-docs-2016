=====================================================
gem_package
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. warning:: The |resource chef_gem| and |resource package_gem| resources are both used to install |ruby| |gems|. For any machine on which |chef| is installed, there are two instances of |ruby|. One is the standard, system-wide instance of |ruby| and the other is a dedicated instance that is available only to |chef|. Use the |resource chef_gem| resource to install |gems| into the instance of |ruby| that is dedicated to |chef|. Use the |resource package_gem| resource to install all other |gems| (i.e. install |gems| system-wide).

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

