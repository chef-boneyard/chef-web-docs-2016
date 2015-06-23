.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Every |chef provisioning| |amazon aws| driver-specific resource has the following actions:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. Use to create the specified object in |amazon aws|.
   * - ``:destroy``
     - Use to destroy the specified object in |amazon aws|.
   * - ``:purge``
     - Use to remove chargable items related to an object in |amazon aws|.
   * - ``:nothing``
     - Use to do nothing.
