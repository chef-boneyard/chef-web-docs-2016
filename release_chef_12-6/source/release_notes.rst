=====================================================
Release Notes: |chef client| 12.6
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.6 and/or are changes from previous versions. The short version:

* **New ksh resource** The |resource script_ksh| resource is added and is based on the |resource script| resource.
* **New metadata.rb settings** The |metadata rb| file has settings for ``chef_version`` and ``ohai_version`` that allow ranges to be specified that declare the supported versions of the |chef client| and |ohai|.
* **New openbsd_package resource** Use the |resource package_openbsd| resource to install packages on the |open bsd| platform.
* **xxxxx** xxxxx


ksh
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_script_ksh.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_ksh_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_ksh_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_ksh_attributes.rst


chocolatey_package
-----------------------------------------------------

.. include:: ../../includes_resources/includes_resource_package_chocolatey.rst

.. note:: ../../includes_notes/includes_notes_resource_based_on_package.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_chocolatey_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_chocolatey_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_chocolatey_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Install a package**

.. include:: ../../step_resource/step_resource_chocolatey_package_install.rst



New metadata.rb Settings
-----------------------------------------------------
The following settings are new for |metadata rb|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_version``
     - |metadata rb chef_version|

       .. include:: ../../includes_config/includes_config_rb_metadata_settings_example_chef_version.rst

   * - ``ohai_version``
     - |metadata rb chef_version|

       .. include:: ../../includes_config/includes_config_rb_metadata_settings_example_ohai_version.rst

.. note:: These settings are not visible in |supermarket|.



xxxxx
-----------------------------------------------------
xxxxx

xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx




Changelog
=====================================================
https://github.com/chef/chef/blob/master/CHANGELOG.md
