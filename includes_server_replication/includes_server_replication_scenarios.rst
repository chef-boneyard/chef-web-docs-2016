.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Replication is configured on a per-organization and also a per-replica basis. Each organization must be configured to synchronize with each replica instance. Each organization may be configured to synchronize with all, some, or none of the available replica instances. 

For example, a single primary |chef server| and a single replica:

.. image:: ../../images/chef_server_replication.png
 
and for example, a single primary |chef server| and multiple replicas:

.. image:: ../../images/chef_server_replication_many.png

|chef replication| use cases:

* Distributing glocal policy across multiple datacenters, and distributing traffic across |chef servers|
* Reducing wide-area network traffic by pointing clients to the nearest replica |chef server|
* Business continuity in the event of an unavailable primary data center (and its |chef server|)
* Synchronizing a replica instance with another replica instance

|chef replication| should not be used for:

* Automated disaster recovery or backup/restore processes. The replication process is read-only and cannot be changed to read-write without manual intervention
* Node re-registration. A node may be associated only with a single |chef server|
