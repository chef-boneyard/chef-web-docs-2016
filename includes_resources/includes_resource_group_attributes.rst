.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``append``
     - **Ruby Types:** TrueClass, FalseClass

       |append_group| Default value: ``false``.
   * - ``excluded_members``
     - **Ruby Type:** Array

       |excluded_members|
   * - ``gid``
     - **Ruby Types:** String, Integer

       |id group|
   * - ``group_name``
     - **Ruby Type:** String

       |name group| Default value: the ``name`` of the resource block. |see syntax|
   * - ``members``
     - **Ruby Type:** Array

       |members_group| When more than one group member is identified, the list of members should be an array: ``members ['user1', 'user2']``.
   * - ``non_unique``
     - **Ruby Types:** TrueClass, FalseClass

       |non_unique_members| Default value: ``false``.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``system``
     - **Ruby Types:** TrueClass, FalseClass

       |system group|
