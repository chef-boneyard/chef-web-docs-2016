.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``interface`` |inspec resource| to test basic network adapter properties, such as name, status, state, address, and link speed (in MB/sec).

* On |unix| and |linux| platforms, any value in the ``/sys/class/net/#{iface}`` directory may be tested.
* On the |windows| platform, the ``Get-NetAdapter`` cmdlet returns the following values: ``Property Name``, ``InterfaceDescription``, ``Status``, ``State``, ``MacAddress``, ``LinkSpeed``, ``ReceiveLinkSpeed``, ``TransmitLinkSpeed``, and ``Virtual``, returned as a |json| object
