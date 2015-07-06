.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``arguments``
     - **Ruby Type:** Array

       |arguments chef_handler| Default value: ``[]``. For example:

       .. code-block:: ruby

          arguments :key1 => 'val1'

       or:

       .. code-block:: ruby

          arguments [:key1 => 'val1', :key2 => 'val2']

   * - ``class_name``
     - **Ruby Type:** String

       |name class_chef_handler|
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``source``
     - **Ruby Type:** String

       |path chef_handler|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
   * - ``supports``
     - **Ruby Type:** Hash

       |supports chef_handler| Possible values: ``:exception``, ``:report``, or ``:start``. Default value: ``{ :report => true, :exception => true }``.
