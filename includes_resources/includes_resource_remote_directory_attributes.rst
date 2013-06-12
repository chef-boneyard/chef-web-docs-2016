.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook resource remote_directory|
   * - ``files_backup``
     - |files_backup resource remote_directory|
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
     - |path directory| Default value: ``name``.
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``purge``
     - |purge resource remote_directory|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source resource remote_directory|
