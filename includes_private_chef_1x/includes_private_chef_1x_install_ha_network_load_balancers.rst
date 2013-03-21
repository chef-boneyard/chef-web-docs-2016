.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

As multiple front-end servers are run, there will a need to provide a mechanism for load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

Create a DNS entry for the load balanced virtual IP address, which will be used to access the cluster. This is also referred to as the ``api_fqdn``.


