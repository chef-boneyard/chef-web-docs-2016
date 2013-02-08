.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The back-end servers utilize |drbd|, a distributed block device, to ensure that data written to disk on one back-end server is efficiently replicated to another. For optimal performance and reliability, we recommend that:

* Your back-end servers have a 100M+ ethernet interface cross-connected to the other, for the cluster keepalive signal.
* Your back-end servers have a 10G+ ethernet interface cross-connected to the other, for |drbd| data replication.

This is in addition to the standard network interfaces on your systems. While |drbd| replication can function on systems without these additional network interfaces, this configuration gives maximum performance and reliability.


