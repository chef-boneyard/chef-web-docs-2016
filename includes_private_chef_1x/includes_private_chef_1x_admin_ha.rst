.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| can operate in a High Availability configuration that provides automated failover for the stateful components in the systems architecture. The architecture has servers split into two segments, the front-end and back-end. The front-end servers handle API and Web UI requests, while the back-end handles data storage and retrieval, which consists of:

* couchdb
* postgresql
* opscode-solr
* rabbitmq
* redis
* cookbook data

Under the hood, we achieve this failover through:

* Asynchronous block level replication of an LVM logical volume via DRBD between two back-end servers.
* Primary/Backup cluster election using VRRP over unicast TCP/IP via keepalived.
* keepalived manages assigning a Virtual IP Address (VIP) to the Primary server based on the results of the election.

.. image:: ../../images/private_chef_10x_ha_topology.png

The front-end servers require load-balancers provided by the customer. |opscode| recommends:

* Hardware load-balancers (such as F5 or NetScaler)
* SSL off-loading
* Round-robin as the load-balancing algorithm

