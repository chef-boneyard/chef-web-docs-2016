.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     -  Always the same value as the ``name`` of the resource block. |see syntax|
   * - ``plugin``
     - Optional. The name of an |ohai| plugin to be reloaded. If this attribute is not specified, the |chef client| will reload all plugins.
   * - ``provider``
     - Optional. |provider resource_parameter|
