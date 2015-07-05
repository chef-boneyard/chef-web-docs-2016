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
   * - ``checksum``
     - **Ruby Type:** String

       |checksum file| Default value: no checksum required.
   * - ``content``
     - **Ruby Type:** String

       |content file| The default behavior will not modify content.
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

       |path full_path_to_file| For example: ``/files/file.txt``. Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
