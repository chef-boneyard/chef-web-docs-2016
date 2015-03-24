=====================================================
Release Notes: |chef client| 12.2
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

.. warning:: This is a placeholder for an upcoming release of the |chef client|.

What's New
=====================================================
The following items are new for |chef client| 12.2 and/or are changes from previous versions. The short version:

* **New dsc_resource** Use the |resource dsc_resource| resource to use any |windows powershell_dsc_short| resource in a |chef| recipe.
* **New --exit-on-error option for knife-ssh** Use the ``--exit-on-error`` option to have the |subcommand knife ssh| subcommand exit on any error.

dsc_resource
-----------------------------------------------------

.. include:: ../../includes_resources_common/includes_resources_common_powershell.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell_dsc.rst

.. include:: ../../includes_resources/includes_resource_dsc_resource.rst

.. warning:: Using the |resource dsc_resource| has the following requirements:

   * |windows management_framework| 5.0 Preview
   * The ``RefreshMode`` configuration setting in the Local Configuration Manager must be set to ``Disabled``
   * **MAY NOT** use the |resource dsc_script| resource in the same recipe or cookbook

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_dsc_resource_syntax.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_dsc_resource_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Open a Zip file**

.. include:: ../../step_resource/step_resource_dsc_resource_zip_file.rst

**Manage users and groups**

.. include:: ../../step_resource/step_resource_dsc_resource_manage_users.rst

Changelog
=====================================================
https://github.com/chef/chef/blob/12-stable/CHANGELOG.md

