.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``property``
     - |property dsc_resource| The format for this attribute must follow ``property :dsc_property_name, "property_value"`` for each property added to the resource block.

       The ``:dsc_property_name`` must be a symbol.

       .. include:: ../../includes_resources/includes_resource_dsc_resource_ruby_types.rst

   * - ``module_name``
     - Use to specify the name of the modeule from which the |windows powershell_dsc_short| resource originates. If this attribute is not specified, it will be inferred.
   * - ``resource``
     - |name powershell_dsc_resource| This value is case-insensitive and must be a symbol that matches the name of the |windows powershell_dsc_short| resource.

       .. include:: ../../includes_resources/includes_resource_dsc_resource_features.rst
