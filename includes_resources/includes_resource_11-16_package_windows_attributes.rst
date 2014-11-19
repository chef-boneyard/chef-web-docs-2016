.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``installer_type``
     - |type package_11-16_string| Possible values: ``msi``.
   * - ``options``
     - |command options|
   * - ``provider``
     - Optional. |provider resource_parameter| (See "Providers" section below for more information.)
   * - ``returns``
     - |returns| This code signals a successful ``:install`` action. Default value: ``0``.
   * - ``source``
     - Optional. |source resource package| Default value: the ``name`` of the resource block. (See "Syntax" section above for more information.)
   * - ``timeout``
     - |timeout| Default value: ``600`` (seconds).








