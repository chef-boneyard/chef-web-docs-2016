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
   * - ``plugin``
     - **Ruby Type:** String

       Optional. |plugin reload_by_ohai| The default behavior reloads all plug-ins.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
