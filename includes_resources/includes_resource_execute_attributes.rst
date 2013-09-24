.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |name command| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``creates``
     - |creates file_exists| Default value: ``nil``.
   * - ``cwd``
     - |cwd run_command| Default value: ``nil``.
   * - ``environment``
     - |environment variables| Default value: ``nil``.
   * - ``group``
     - |group command| Default value: ``nil``.
   * - ``path``
     - |path resource execute|
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``returns``
     - |return_value cmd| Default value: ``0``.
   * - ``timeout``
     - |timeout command| Default value: ``3600``.
   * - ``user``
     - |user command| Default value: ``nil``.
   * - ``umask``
     - |umask| Default value: ``nil``.
