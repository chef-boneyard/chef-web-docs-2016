=====================================================
dsc_resource
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell_dsc.rst

.. include:: ../../includes_resources/includes_resource_dsc_resource.rst

.. warning:: Using the |resource dsc_resource| has the following requirements:

   * |windows management_framework| 5.0 February Preview (or higher), which includes |windows powershell| 5.0.10018.0
   * The ``RefreshMode`` configuration setting in the Local Configuration Manager must be set to ``Disabled``
   * The |resource dsc_script| resource  may not be used in the same run-list with the |resource dsc_resource|. This is because the |resource dsc_script| resource requires that ``RefreshMode`` in the Local Configuration Manager be set to ``Push``, whereas the |resource dsc_resource| resource requires it to be set to ``Disabled``

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
