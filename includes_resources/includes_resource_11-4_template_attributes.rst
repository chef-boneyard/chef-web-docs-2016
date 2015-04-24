.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - |cookbook file_location| The default value is the current cookbook.
   * - ``group``
     - |windows group_identifier|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - |local_template| Default value: ``false``.
   * - ``mode``
     - |mode resource_file_11-4|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|
   * - ``path``
     - |path file| |path_fully_qualified| Default value: ``name``.
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``sensitive``
     - |sensitive| Default value: ``false``.
   * - ``source``
     - |source template| |source template_cookbook| |source template_local| This attribute may also be used to distribute specific files to specific platforms. |see file_specificity| Default value: the ``name`` of the resource block. |see syntax|
   * - ``variables``
     - |variables passed_to_template|
       
       .. include:: ../../includes_template/includes_template_partials_variables_attribute.rst
