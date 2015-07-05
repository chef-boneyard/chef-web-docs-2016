.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - **Ruby Types:** TrueClass, FalseClass

       |atomic_update| Default value: ``true``.
   * - ``backup``
     - **Ruby Types:** FalseClass, Integer

       |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - **Ruby Type:** String

       |cookbook file_location| The default value is the current cookbook.
   * - ``force_unlink``
     - **Ruby Types:** TrueClass, FalseClass

       |force_unlink| Default value: ``false``.
   * - ``group``
     - **Ruby Types:** Integer, String

       |windows group_identifier|
   * - ``inherits``
     - **Ruby Types:** TrueClass, FalseClass

       |windows| only. |inherits windows security| Default value: ``true``.
   * - ``manage_symlink_source``
     - **Ruby Types:** TrueClass, FalseClass, NilClass

       |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, the |chef client| will manage a symlink's source file and emit a warning. When this value is set to ``true``, the |chef client| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version.
   * - ``mode``
     - **Ruby Types:** Integer, String

       |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - **Ruby Types:** Integer, String

       |owner windows security|	
   * - ``path``
     - **Ruby Type:** String

       |path cookbook_file| |resource_block_default| For example: ``file.txt``.

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
   * - ``source``
     - **Ruby Types:** Sting, Array

       |source cookbook_file| Can be used to distribute specific files to specific platforms. |see file_specificity| |see syntax|
   * - ``verify``
     - **Ruby Types:** String, Block

       |verify_file|

       .. include:: ../../includes_resources_common/includes_resources_common_attribute_verify.rst

.. note:: Use the ``owner`` and ``right`` attributes and avoid the ``group`` and ``mode`` attributes whenever possible. The ``group`` and ``mode`` attributes are not true |windows| concepts and are provided more for backward compatibility than for best practice.







