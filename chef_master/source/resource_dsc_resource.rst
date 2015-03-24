=====================================================
dsc_resource
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell_dsc.rst

.. include:: ../../includes_resources/includes_resource_dsc_resource.rst

.. warning:: Using the |resource dsc_resource| has the following requirements:

   * |windows management_framework| 5.0 Preview
   * The ``RefreshMode`` configuration setting in the Local Configuration Manager must be set to ``Disabled``
   * **MAY NOT** use the |resource dsc_script| resource in the same recipe or cookbook

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_resource_syntax.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_resource_attributes.rst

Examples
=====================================================

**Open a Zip file**

.. include:: ../../step_resource/step_resource_dsc_resource_zip_file.rst

**Manage users and groups**

.. include:: ../../step_resource/step_resource_dsc_resource_manage_users.rst
