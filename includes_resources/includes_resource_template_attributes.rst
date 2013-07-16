.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - |atomic_update| Default value: ``true``.
   * - ``backup``
     - |backups_kept| Default value: ``5``.
   * - ``content``
     - |content resource file|
   * - ``cookbook``
     - |cookbook resource template|
   * - ``force_unlink``
     - |force_unlink|
   * - ``group``
     - |windows group_identifier|
   * - ``helper``
     - |helper| Default value: ``{}``.
   * - ``helpers``
     - |helpers| Default value: ``[]``.
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - |local resource template|
   * - ``manage_symlink_source``
     - |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, |chef| will manage a symlink's source file and emit a warning. When this value is set to ``true``, |chef| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version of |chef|.
   * - ``mode``
     - |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``path``
     - |path file| Default value: ``name``.
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source file_location| Can be used to distribute specific files to specific platforms (see the section "File Specificity", below). Default value: basename of ``name`` plus ``.erb``.
   * - ``variables``
     - |variables for template|
