.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Property
     - Description
   * - ``lacp``
     - |mode lacp| Default value: ``disable``.
   * - ``links``
     - Required. |links interface_lag|

       .. note:: If a ``netdev_lag`` resource is deleted, interfaces that are defined by this attribute are also deleted, unless they have been configured elsewhere.
   * - ``minimum_links``
     - |links minimum_physical_lag|
   * - ``name``
     - |name lag|
