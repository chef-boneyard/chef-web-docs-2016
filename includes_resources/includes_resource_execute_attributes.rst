.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |name command| Default value: the ``name`` of the resource block. |see syntax|
   * - ``creates``
     - |creates file_exists|
   * - ``cwd``
     - |cwd run_command|
   * - ``environment``
     - |environment variables|
   * - ``group``
     - |group command|
   * - ``path``
     - .. warning:: This attribute is deprecated starting in |chef client| 12.0. Use the ``environment`` attribute instead. For example:

          .. code-block:: ruby

             execute "mycommand" do
               environment "PATH" => "/my/path/to/bin:#{ENV["PATH"]}"
             end
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``returns``
     - |return_value cmd| Default value: ``0``.
   * - ``sensitive``
     - |sensitive| Default value: ``false``.
   * - ``timeout``
     - |timeout command| Default value: ``3600``.
   * - ``user``
     - |user command|
   * - ``umask``
     - |umask|
