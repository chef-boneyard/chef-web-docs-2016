.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``module_name``
     - **Ruby Type:** String

       |name powershell_module| If this property is not specified, it will be inferred.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``property``
     - **Ruby Type:** Symbol

       |property dsc_resource| The format for this property must follow ``property :dsc_property_name, "property_value"`` for each |windows powershell_dsc_short| property added to the resource block.

       The ``:dsc_property_name`` must be a symbol.

       .. include:: ../../includes_resources/includes_resource_dsc_resource_ruby_types.rst

   * - ``resource``
     - **Ruby Type:** String

       |name powershell_dsc_resource| This value is case-insensitive and must be a symbol that matches the name of the |windows powershell_dsc_short| resource.

       .. include:: ../../includes_resources/includes_resource_dsc_resource_features.rst
   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]'

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
