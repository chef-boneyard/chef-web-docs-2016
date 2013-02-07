.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

As you are running multiple API front-ends, you will need to provide a mechanism for load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced VIP, which you will use to access the cluster---this is the ``api_fqdn``.