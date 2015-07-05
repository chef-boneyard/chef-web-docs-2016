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

       |path cookbook_file| |resource_block_default|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
   * - ``source``
     - **Ruby Types:** Sting, Array

       |source file_location| Can be used to distribute specific files to specific platforms. |see file_specificity| |see syntax|

.. note:: Use the ``owner`` and ``right`` attributes and avoid the ``group`` and ``mode`` attributes whenever possible. The ``group`` and ``mode`` attributes are not true |windows| concepts and are provided more for backward compatibility than for best practice.
