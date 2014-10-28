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
   * - ``interpreter``
     - |interpreter| Default value: ``:batch``.
   * - ``provider``
     - Optional. |provider resource_parameter| (See "Providers" section below for more information.)
   * - ``returns``
     - |return_value cmd| Default value: ``0``.
   * - ``timeout``
     - |timeout command| Default value: ``3600``.
   * - ``user``
     - |user name_or_id|

.. note:: See http://technet.microsoft.com/en-us/library/bb490880.aspx for more information about the |windows cmd exe| interpreter.
