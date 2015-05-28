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
   * - ``checksum``
     - Optional, see ``use_conditional_get``. |checksum remote_file|
   * - ``force_unlink``
     - |force_unlink| Default value: ``false``.
   * - ``ftp_active_mode``
     - |ftp_active_mode| Default value: ``false``.
   * - ``group``
     - |windows group_identifier|
   * - ``headers``
     - |headers custom| Default value: ``{}``.
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``manage_symlink_source``
     - |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, the |chef client| will manage a symlink's source file and emit a warning. When this value is set to ``true``, the |chef client| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version.
   * - ``mode``
     - |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``path``
     - |path full_path_to_file| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - Required. |source file_location| |source file_location http_ftp_local|
       
       .. include:: ../../includes_file/includes_file_12-3_remote_source_location.rst

   * - ``use_conditional_get``
     - |use conditional_get| Default value: ``true``.
   * - ``use_etag``
     - |use etag| Default value: ``true``.
   * - ``use_last_modified``
     - |use last_modified| Default value: ``true``.
   * - ``verify``
     - |verify_file|

       .. include:: ../../includes_resources_common/includes_resources_common_attribute_verify.rst

