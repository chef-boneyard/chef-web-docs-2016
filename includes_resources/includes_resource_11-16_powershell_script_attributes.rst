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

       |name command| |resource_block_default| |see syntax|
   * - ``convert_boolean_return``
     - **Ruby Types:** TrueClass, FalseClass

       |convert_boolean_return| Default value: ``false``.

       .. include:: ../../includes_resources/includes_resource_powershell_script_attributes_guard_interpreter.rst
   * - ``flags``
     - **Ruby Type:** String

       |flags powershell_script| Default value: ``-NoLogo, -NonInteractive, -NoProfile, -ExecutionPolicy RemoteSigned, -InputFormat None, -File``.
   * - ``interpreter``
     - **Ruby Type:** String

       |interpreter|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
