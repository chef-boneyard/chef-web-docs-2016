.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``group``
     - **Ruby Types:** Integer, String

       |windows group_identifier|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``inherits``
     - **Ruby Types:** TrueClass, FalseClass

       |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - **Ruby Types:** Integer, String

       |mode resource| |mode resource_directory_11-4|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``owner``
     - **Ruby Types:** Integer, String

       |owner windows security|
   * - ``path``
     - **Ruby Type:** String

       |path directory| |path_fully_qualified| |resource_block_default| |see syntax|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``recursive``
     - **Ruby Types:** TrueClass, FalseClass

       |recursive directory| Default value: ``false``.
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
