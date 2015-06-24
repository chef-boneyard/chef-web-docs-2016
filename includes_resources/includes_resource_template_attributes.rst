.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 150 450
   :header-rows: 1

   * - Attribute
     - Type
     - Description
   * - ``atomic_update``
     - TrueClass, FalseClass
     - |atomic_update| Default value: ``true``.
   * - ``backup``
     - FalseClass, Integer
     - |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - String
     - |cookbook file_location| The default value is the current cookbook.
   * - ``force_unlink``
     - TrueClass, FalseClass
     - |force_unlink| Default value: ``false``.
   * - ``group``
     - Integer, String
     - |windows group_identifier|
   * - ``helper``
     - Method
     - |helper| Default value: ``{}``.
   * - ``helpers``
     - Module
     - |helpers| Default value: ``[]``.
   * - ``inherits``
     - TrueClass, FalseClass
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - TrueClass, FalseClass
     - |local_template| Default value: ``false``.
   * - ``manage_symlink_source``
     - TrueClass, FalseClass, NilClass
     - |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, the |chef client| will manage a symlink's source file and emit a warning. When this value is set to ``true``, the |chef client| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version.
   * - ``mode``
     - Integer, String
     - |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - Integer, String
     - |owner windows security|
   * - ``path``
     - String
     - |path full_path_to_file|

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``provider``
     - Class
     - Optional. |provider resource_parameter|
   * - ``rights``
     - Integer, String
     - |windows| only. |rights windows security|
   * - ``sensitive``
     - TrueClass, FalseClass
     - |sensitive| Default value: ``false``.
   * - ``source``
     - String, Array
     - |source template| |source template_cookbook| |source template_local| This attribute may also be used to distribute specific files to specific platforms. |see file_specificity| Default value: the ``name`` of the resource block. |see syntax|
   * - ``variables``
     - Hash
     - |variables passed_to_template|
       
       .. include:: ../../includes_template/includes_template_partials_variables_attribute.rst
   * - ``verify``
     - TrueClass, FalseClass
     - |verify_file|

       .. include:: ../../includes_resources_common/includes_resources_common_attribute_verify.rst
