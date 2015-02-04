.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the primary server in the cluster fails, the |vrrp| heartbeat will stop. At this point the backup server will begin transitioning to the primary state, which involves:

#. Assigning the virtual IP address and sending a ``proxy-arp``
#. Attempting to take-over as the primary server for the |drbd| device
#. Starting all of the back-end services

.. note:: The first step is transitioning the virtual IP address, which means that traffic will flow to the backup server while it makes the transition to being the primary server.