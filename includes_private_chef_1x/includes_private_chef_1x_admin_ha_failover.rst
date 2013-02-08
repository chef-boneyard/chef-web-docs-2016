.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the Primary server in the cluster fails, the VRRP heartbeat will stop. At this point the Backup will begin transitioning to the Primary state, which involves:

#. Assigning the Virtual IP Address, and sending a ``proxy-arp``.
#. Attempting to take-over as the Primary for the |drbd| device.
#. Starting all of the back-end services.

Note that the first step is transitioning the Virtual IP Address, which means traffic will be flowing to the Backup while it transitions to Primary.