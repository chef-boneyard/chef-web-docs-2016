.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``installer_type``
     - |type package| Possible values: ``:msi``.
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``returns``
     - |returns| This code signals a successful ``:install`` action. Default value: ``0``.
   * - ``source``
     - Optional. |source resource package| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``timeout``
     - |timeout| Default value: ``600`` (seconds).








