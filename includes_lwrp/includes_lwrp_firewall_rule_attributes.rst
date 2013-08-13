.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - |name firewall_rule|
   * - ``protocol``
     - |firewall rule_protocol| Default value: ``:all``.
   * - ``port``
     - |port number|
   * - ``source``
     - |firewall rule_in| Default value: ``0.0.0.0/0`` (from "anywhere").
   * - ``destination``
     - |firewall rule_out|
   * - ``position``
     - |firewall rule_position|
