.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:cookbook``
     - The name of the cookbook in which the ``authorized_keys`` template is located.
   * - ``:data_bag``
     - The object to be searched.
   * - ``:group_id``
     - The numeric identifier for a group.
   * - ``:group_name``
     - The name of a group. This value defaults to the name of the resource if left empty.
   * - ``:search_group``
     - The name of the group to be searched. This value defaults to the name of the resource if left empty.
