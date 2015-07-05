.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``append``
     - **Ruby Types:** TrueClass, FalseClass

       |append_group| Default value: ``false``.
   * - ``gid``
     - **Ruby Types:** String, Integer

       |id group|
   * - ``group_name``
     - **Ruby Type:** String

       |name group| |resource_block_default| |see syntax|
   * - ``members``
     - **Ruby Type:** Array

       |members_group|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``system``
     - **Ruby Types:** TrueClass, FalseClass

       |system group|
