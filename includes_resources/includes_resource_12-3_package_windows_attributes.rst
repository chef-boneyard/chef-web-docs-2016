.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``installer_type``
     - **Ruby Type:** Symbol

       |type package| Possible values: ``:msi``.
   * - ``options``
     - **Ruby Type:** String

       |command options|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``returns``
     - **Ruby Types:** String, Integer, Array

       |returns| This code signals a successful ``:install`` action. Default value: ``0``.
   * - ``source``
     - **Ruby Type:** String

       Optional. |source resource package| |resource_block_default| |see syntax|
   * - ``timeout``
     - **Ruby Types:** String, Integer

       |timeout| Default value: ``600`` (seconds).
