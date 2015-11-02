.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``interface`` |inspec resource| to test basic network adapter properties, such as name, status, state, address, and link speed (in MB/sec).

* On |linux| platforms, ``/sys/class/net/#{iface}`` is used as source
* On the |windows| platform, the ``Get-NetAdapter`` cmdlet is used as source
