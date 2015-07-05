.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - **Ruby Types:** FalseClass, Integer

       |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - **Ruby Type:** String

       |cookbook file_location| The default value is the current cookbook.
   * - ``group``
     - **Ruby Types:** Integer, String

       |windows group_identifier|
   * - ``inherits``
     - **Ruby Types:** TrueClass, FalseClass

       |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - **Ruby Types:** TrueClass, FalseClass

       |local_template| Default value: ``false``.
   * - ``mode``
     - **Ruby Types:** Integer, String

       |mode resource_file_11-4|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - **Ruby Types:** Integer, String

       |owner windows security|
   * - ``path``
     - **Ruby Type:** String

       |path file| |path_fully_qualified| Default value: ``name``.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
   * - ``sensitive``
     - **Ruby Types:** TrueClass, FalseClass

       |sensitive| Default value: ``false``.
   * - ``source``
     - **Ruby Types:** String, Array

       |source template| |source template_cookbook| |source template_local| This attribute may also be used to distribute specific files to specific platforms. |see file_specificity| |resource_block_default| |see syntax|
   * - ``variables``
     - **Ruby Type:** Hash

       |variables passed_to_template|
       
       .. include:: ../../includes_template/includes_template_partials_variables_attribute.rst
