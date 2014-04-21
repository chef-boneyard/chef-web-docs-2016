.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - The name of the firewall rule.
   * - ``protocol``
     - The protocol used by the firewall rule. Valid values are: ``:all``, ``:udp``, ``:tcp``. Default value: ``:all``.
   * - ``port``
     - The port number.
   * - ``source``
     - The IP address or subnet from which incoming traffic originates. Default value: ``0.0.0.0/0`` (from "anywhere").
   * - ``destination``
     - The IP address or subnet to which traffic is routed.
   * - ``position``
     - The position at which a rule is inserted. If this value is not specified, a rule is inserted at the end of a rule list.
