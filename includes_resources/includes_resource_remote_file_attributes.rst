.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - |atomic_update|
   * - ``backup``
     - |backup resource file|
   * - ``content``
     - |content resource file|
   * - ``force_unlink``
     - |force_unlink|
   * - ``ftp_active_mode``
     - |ftp_active_mode| Default value: ``false``.
   * - ``group``
     - |windows group_identifier|
   * - ``headers``
     - |headers resource remote_file| Default value: ``{}``.
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - The octal mode for a file.
       
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
     - Required. |source file_location| Default value: ``nil``.
   * - ``use_conditional_get``
     - |use_conditional_get| Default value: ``true``.
   * - ``use_etag``
     - |use_etag| Default value: ``true``.
   * - ``use_last_modified``
     - |use_last_modified| Default value: ``true``.
