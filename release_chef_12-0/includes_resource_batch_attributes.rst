.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - |architecture windows_process|
   * - ``code``
     - |code quoted_string|
   * - ``command``
     - |name command|
   * - ``creates``
     - |creates file_exists|
   * - ``cwd``
     - |cwd run_command|
   * - ``flags``
     - |flags|
   * - ``group``
     - |group command|
   * - ``guard_interpreter``
     - Default value: ``:batch``. When this attribute is set to ``:batch``, the 64-bit version of the |windows cmd exe| shell will be used to evaluate strings values for the ``not_if`` and ``only_if`` attributes. Set this value to ``:default`` to use the 32-bit version of the |windows cmd exe| shell.
   * - ``interpreter``
     - |interpreter|
   * - ``provider``
     - Optional. |provider resource_parameter| (See "Providers" section below for more information.)
   * - ``returns``
     - |return_value cmd| Default value: ``0``.
   * - ``timeout``
     - |timeout command| Default value: ``3600``.
   * - ``user``
     - |user name_or_id|

.. note:: See http://technet.microsoft.com/en-us/library/bb490880.aspx for more information about the |windows cmd exe| interpreter.
