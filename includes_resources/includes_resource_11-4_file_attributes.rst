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
   * - ``checksum``
     - |checksum file| Default value: no checksum required.
   * - ``content``
     - |content file| The default behavior will not modify content.
   * - ``group``
     - |windows group_identifier|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - |mode resource_file_11-4|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``path``
     - |path full_path_to_file| For example: ``/files/file.txt``. Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``sensitive``
     - |sensitive| Default value: ``false``.
