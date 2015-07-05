.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - **Ruby Types:** FalseClass, Integer

       |backups_kept| Default value: ``5``.
   * - ``checksum``
     - **Ruby Type:** String

       Optional. |checksum remote_file|
   * - ``group``
     - **Ruby Types:** Integer, String

       |windows group_identifier|
   * - ``inherits``
     - **Ruby Types:** TrueClass, FalseClass

       |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - **Ruby Types:** Integer, String

       |mode resource_file_11-4|
       
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

       |path file| |path_fully_qualified| |resource_block_default|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``rights``
     - **Ruby Types:** Integer, String

       |windows| only. |rights windows security|
   * - ``source``
     - **Ruby Types:** Sting, Array

       Required. |source file_location|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
