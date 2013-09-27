.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``lacp``
     - The Link Aggregation Control Protocol (LACP) mode. Possible values: ``active`` (active mode), ``disable`` (not used), or ``passive`` (passive mode).
   * - ``links``
     - An array of interfaces to be configured as members of an aggregated Ethernet bundle.
   * - ``minimum_links``
     - The minimum number of physical links that are required to ensure the availability of the aggregated Ethernet bundle.
   * - ``name``
     - The name of the aggregated Ethernet bundle.

