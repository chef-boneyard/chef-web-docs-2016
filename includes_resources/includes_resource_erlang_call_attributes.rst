.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - **Ruby Type:** String

       |code erlang_call| Default value: ``q()``.
   * - ``cookie``
     - **Ruby Type:** String

       |cookie resource erlang_call|
   * - ``distributed``
     - **Ruby Types:** TrueClass, FalseClass

       |distributed_erlang_node| Default value: ``false``.
   * - ``name_type``
     - **Ruby Type:** String

       |name sname_or_name| Default value: ``sname``.
   * - ``node_name``
     - **Ruby Type:** String

       |node_hostname| Default value: ``chef@localhost``.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
