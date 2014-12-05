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
     - |path resource execute| The default value uses the system path.

       .. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst
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
