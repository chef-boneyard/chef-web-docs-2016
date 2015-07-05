.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - **Ruby Type:** String

       Always the same value as the ``name`` of the resource block. |see syntax|
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``plugin``
     - **Ruby Type:** String

       Optional. |name ohai_plugin| If this attribute is not specified, the |chef client| will reload all plugins.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
