.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``bridge`` |inspec resource| to test basic network bridge properties, such as name, if an interface is defined, and the associations for any defined interface.

* On |linux| platforms, any value in the ``/sys/class/net/{interface}/bridge`` directory may be tested
* On the |windows| platform, the ``Get-NetAdapter`` cmdlet is associated with the ``Get-NetAdapterBinding`` cmdlet and returns the ``ComponentID ms_bridge`` value as a |json| object
