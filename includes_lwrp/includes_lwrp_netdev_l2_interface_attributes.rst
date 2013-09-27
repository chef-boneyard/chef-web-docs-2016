.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``description``
     - The description of the |junos| interface.
   * - ``name``
     - The name of the |junos| interface.
   * - ``tagged_vlans``
     - An array of VLANs that carry traffic on a trunk interface.
   * - ``untagged_vlan``
     - The native VLAN on an interface.
   * - ``vlan_tagging``
     - Indicates whether a port is in access or trunk mode. Default value: ``true`` (trunk mode).
