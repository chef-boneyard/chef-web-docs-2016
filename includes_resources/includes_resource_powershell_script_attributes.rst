.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
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
   * - ``creates``
     - **Ruby Type:** String

       Inherited from |resource execute| resource. |creates file_exists|
   * - ``cwd``
     - **Ruby Type:** String

       Inherited from |resource execute| resource. |cwd run_command|
   * - ``environment``
     - **Ruby Type:** Hash

       Inherited from |resource execute| resource. |environment variables|
   * - ``flags``
     - **Ruby Type:** String

       |flags powershell_script| Default value: ``-NoLogo, -NonInteractive, -NoProfile, -ExecutionPolicy RemoteSigned, -InputFormat None, -File``.
   * - ``group``
     - **Ruby Types:** String, Integer

       Inherited from |resource execute| resource. |group command|
   * - ``guard_interpreter``
     - **Ruby Type:** Symbol

       Default value: ``:powershell_script``. When this property is set to ``:powershell_script``, the 64-bit version of the |windows powershell| shell will be used to evaluate strings values for the ``not_if`` and ``only_if`` properties. Set this value to ``:default`` to use the 32-bit version of the |windows cmd exe| shell.
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
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
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``returns``
     - **Ruby Types:** Integer, Array

       Inherited from |resource execute| resource. |return_value cmd| Default value: ``0``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``timeout``
     - **Ruby Types:** Integer, Float

       Inherited from |resource execute| resource. |timeout command| Default value: ``3600``.
