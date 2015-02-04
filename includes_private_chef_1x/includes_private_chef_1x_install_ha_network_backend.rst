.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The back-end servers utilize |drbd|, a distributed block device, to ensure that data written to disk on one back-end server is efficiently replicated to another. For optimal performance and reliability, we recommend that:

* Back-end servers have a 10G+ ethernet interface cross-connected to the other, for both the cluster ``keepalive`` signal and |drbd| data replication.

This is in addition to the standard network interfaces that are available and would be used for access by the frontends and management functions. While |drbd| replication can function on systems without this additional network interface, this configuration gives maximum performance and reliability.

