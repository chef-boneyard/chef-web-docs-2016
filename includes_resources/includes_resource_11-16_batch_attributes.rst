.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - **Ruby Type:** Symbol

       |architecture windows_process| |architecture windows_process_i386| Possible values: ``:i386`` (for 32-bit processes) and ``:x86_64`` (for 64-bit processes).
   * - ``code``
     - **Ruby Type:** String

       |code quoted_string|
   * - ``command``
     - **Ruby Types:** String, Array

       |name command|
   * - ``creates``
     - **Ruby Type:** String

       |creates file_exists|
   * - ``cwd``
     - **Ruby Type:** String

       |cwd run_command|
   * - ``flags``
     - **Ruby Type:** String

       |flags|
   * - ``group``
     - **Ruby Types:** String, Integer

       |group command|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``returns``
     - **Ruby Types:** Integer, Array

       |return_value cmd| Default value: ``0``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``timeout``
     - **Ruby Types:** Integer, Float

       |timeout command| Default value: ``3600``.
   * - ``user``
     - **Ruby Types:** String, Integer

       |user name_or_id|

.. note:: See http://technet.microsoft.com/en-us/library/bb490880.aspx for more information about the |windows cmd exe| interpreter.
