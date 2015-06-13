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
   * - ``options``
     - |command options|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``success_codes``
     - |success_codes| Set an array of possible successful installation return codes. Must be an array, and defaults to [0, 42, 127].
   * - ``source``
     - Optional. |source resource package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``timeout``
     - |timeout| Default value: ``600`` (seconds).








