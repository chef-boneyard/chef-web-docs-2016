.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following actions:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Action
     - Description
   * - ``:configure_startup``
     - Use to configure a service based on the value of the ``startup_type`` attribute.
   * - ``:disable``
     - |resource action disable service| This is the same as ``startup_type :disabled``.
   * - ``:enable``
     - |resource action export service| This is the same as ``startup_type :automatic``.
   * - ``:nothing``
     - Default. |resource action nothing service|
   * - ``:reload``
     - |resource action reload service|
   * - ``:restart``
     - |resource action restart service|
   * - ``:start``
     - |resource action start service|
   * - ``:stop``
     - |resource action stop service|


