.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Explanation
   * - ``atomic_update``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |atomic_update| Default value: ``true``.
   * - ``backup``
     - **Ruby Types:**

       FalseClass, Integer

       **Description**

       |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - **Ruby Type:**

       String

       **Description**

       |cookbook file_location| The default value is the current cookbook.
   * - ``force_unlink``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |force_unlink| Default value: ``false``.
   * - ``group``
     - **Ruby Types:**

       Integer, String

       **Description**
       |windows group_identifier|
   * - ``helper``
     - **Ruby Type:**

       Method

       **Description**

       |helper| Default value: ``{}``.
   * - ``helpers``
     - **Ruby Type:**

       Module

       **Description**

       |helpers| Default value: ``[]``.
   * - ``inherits``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |local_template| Default value: ``false``.
   * - ``manage_symlink_source``
     - **Ruby Types:**

       TrueClass, FalseClass, NilClass

       **Description**

       |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, the |chef client| will manage a symlink's source file and emit a warning. When this value is set to ``true``, the |chef client| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version.
   * - ``mode``
     - **Ruby Types:**

       Integer, String

       **Description**

       |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - **Ruby Types:**

       Integer, String

       **Description**

       |owner windows security|
   * - ``path``
     - **Ruby Type:**

       String

       **Description**

       |path full_path_to_file|

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``provider``
     - **Ruby Type:**

       Chef Class

       **Description**

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:**

       Integer, String

       **Description**

       |windows| only. |rights windows security|
   * - ``sensitive``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |sensitive| Default value: ``false``.
   * - ``source``
     - **Ruby Types:**

       String, Array

       **Description**

       |source template| |source template_cookbook| |source template_local| This attribute may also be used to distribute specific files to specific platforms. |see file_specificity| Default value: the ``name`` of the resource block. |see syntax|
   * - ``variables``
     - **Ruby Type:**

       Hash

       **Description**

       |variables passed_to_template|
       
       .. include:: ../../includes_template/includes_template_partials_variables_attribute.rst
   * - ``verify``
     - **Ruby Types:**

       TrueClass, FalseClass

       **Description**

       |verify_file|

       **Examples**

       .. include:: ../../includes_resources_common/includes_resources_common_attribute_verify.rst
