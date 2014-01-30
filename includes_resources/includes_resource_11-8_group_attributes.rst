.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. |append resource group| needs updating to current string below.
.. |group_members| needs updating to current string below.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``append``
     - Use to specify how members should be appended and/or removed from a group. When ``true``, ``members`` will be appended and ``excluded_members`` will be removed. When ``false``, group members will be reset to the value of the ``members`` attribute. Default value: ``false``.
   * - ``gid``
     - |id group|
   * - ``group_name``
     - |name group| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``members``
     - Indicates which users should be set or appended to a group.
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``system``
     - |system group|
