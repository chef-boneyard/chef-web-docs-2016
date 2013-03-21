.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| can operate in a High Availability configuration that provides automated failover for stateful components in the system architecture. The High Availability configuration splits servers into two segments: front-end and back-end servers. The front-end servers handle requests to the user interface and requests that use the |api chef server|. The back-end servers handle data storage and retrieval, which consists of:

* |couch db|
* |postgresql|
* |opscode solr|
* |rabbitmq|
* |redis|
* Cookbook data

Failover on the back-end servers is achieved using the following:

* Asynchronous block level replication of logical volume managers using |drbd|, positioned between two back-end servers
* A primary and backup cluster election using |vrrp| over unicast TCP/IP and |keepalived|
* |keepalived| a virtual IP address to the primary server based on the results of the election

.. image:: ../../images/private_chef_1x_ha_topology.png

The front-end servers require load-balancers. |opscode| recommends:

* Hardware load-balancers (such as |f5| or |netscalar|)
* |ssl| off-loading
* Round-robin as the load-balancing algorithm

