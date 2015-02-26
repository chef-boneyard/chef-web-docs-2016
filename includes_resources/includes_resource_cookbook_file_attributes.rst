.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - |atomic_update| Default value: ``true``.
   * - ``backup``
     - |backups_kept| Default value: ``5``.
   * - ``cookbook``
     - |cookbook file_location| The default value is the current cookbook.
   * - ``force_unlink``
     - |force_unlink| Default value: ``false``.
   * - ``group``
     - |windows group_identifier|
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
     - |path cookbook_file| For example: ``file.txt``.

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - |source cookbook_file| Can be used to distribute specific files to specific platforms. |see file_specificity| Default value: the ``name`` of the resource block. |see syntax|
   * - ``verify``
     - Use to specify a block or a string that returns ``true`` or ``false``. A string, when ``true`` is executed as a system command. For example:

       .. code-block:: ruby

         template "/etc/nginx.conf" do
           verify "nginx -t -c %{path}"
         end

       A block is arbitrary |ruby| defined within the resource block by using the keyword ``verify``. When a block is ``true``, the |chef client| will continue to update the file as appropriate. For example:

       .. code-block:: ruby

         template "/tmp/baz" do
           verify { 1 == 1 }
         end

       or:

       .. code-block:: ruby

         template "/tmp/bar" do
           verify { 1 == 1}
         end

       or:

       .. code-block:: ruby

         template "/tmp/foo" do
           verify do |path|
             true
           end
         end

       should all return ``true``. Whereas, the following should return ``false``:

       .. code-block:: ruby

         template "/tmp/turtle" do
           verify "/usr/bin/false"
         end

       If a string or a block return ``false``, the |chef client| run will stop and an error will be returned.

.. note:: Use the ``owner`` and ``right`` attributes and avoid the ``group`` and ``mode`` attributes whenever possible. The ``group`` and ``mode`` attributes are not true |windows| concepts and are provided more for backward compatibility than for best practice.
