.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``image``
     - Use to specify the |amazon ami|
   * - ``instance_type``
     - Use to specify the |amazon ami| instance type. For example: ``T2``, ``M4``, or ``C3``.
   * - ``name``
     - Use to specify the name of the |amazon ami|.
   * - ``options``
     - Use to specify a |ruby hash| that contains xxxxx. Default value: ``{ }``.
