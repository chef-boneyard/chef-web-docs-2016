.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook file_location| The default value is the current cookbook.
   * - ``files_backup``
     - |files_backup| Default value: ``5``.
   * - ``files_group``
     - |windows group_identifier|
   * - ``files_mode``
     - The octal mode for a file.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``files_owner``
     - |owner windows security|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``overwrite``
     - |use file_overwrite| Default value: ``true``.
   * - ``path``
     - |path directory| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``purge``
     - |purge target_directory| Default value: ``false``.
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source remote_directory|
