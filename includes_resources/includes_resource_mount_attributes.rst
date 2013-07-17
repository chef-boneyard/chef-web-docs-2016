.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``device``
     - Required for ``:umount`` and ``:remout`` actions (for the purpose of checking the mount command output for presence). |device mount| Default value: ``nil``.
   * - ``device_type``
     - |device_type| Default value: ``:device``.
   * - ``dump``
     - |dump resource mount|
   * - ``fstype``
     - |fstype resource mount|
   * - ``mount_point``
     - |mount_point| Default value: ``name``.
   * - ``options``
     - |options mount| Default value: ``defaults``.
   * - ``pass``
     - |pass resource mount|
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``supports``
     - |supports resource mount|
