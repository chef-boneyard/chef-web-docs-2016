.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``device``
     - **Ruby Type:** String

       |route_device|
   * - ``gateway``
     - **Ruby Type:** String

       |route_gateway|
   * - ``netmask``
     - **Ruby Type:** String

       |netmask| For example: ``255.255.255.0``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``target``
     - **Ruby Type:** String

       |target_address| |resource_block_default| |see syntax|

.. Attributes in the route resource that aren't in the route provider: domain, domainname, hostname, metric, networking, networking_ipv6, route_type
