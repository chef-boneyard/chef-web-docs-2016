.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

As multiple API front-end servers are being run, provide for a mechanism to load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced virtual IP address, which is used to access the cluster---this is the ``api_fqdn``.