.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

"Split brain" is a concept of clustered computing systems in which the cluster loses its heartbeat communication channel and becomes two unconnected pieces. Recovery from a split-brain is a complex issue and different clustering software packages use different methods.

Failures happen, so completely preventing split-brain is not an absolute possibility. However, it is possible to alleviate some of the issues that crop up in split-brain scenarios by maxing out the heartbeat network bandwidth and optimizing transfer protocols.

DRBD is a shared-nothing system; data is replicated between hosts over a dedicated network link rather than stored on a central NAS or SAN that all hosts connect to. The most critical issue in HA storage is loss or corruption of data. Maximizing the amount of data that can be passed over the wire while all systems are up and running correctly minimizes the chance that something will be lost or unrecoverable if a host goes down.

At any given time, only one drbd host has userland access to the data; this host is referred to as the Primary. The other host runs the |drbd| daemon but cannot mount the storage into the filesystem. It receives information from the Primary and replicates disk actions on its local copy of the storage, but the partition looks like it doesn’t have a filesystem to the ``mount`` command.

DRBD’s approach to split-brain situations is to degrade all partners still alive to Secondary status and wait for manual intervention. This is called auto-fencing, with a goal of minimizing the potential for damage to your data. When you lose one of the partners in your HA pair, a bit of manual intervention is required to ensure that the disks aren’t in a bad state and can be brought back up. The scenarios are discussed below, as well as suggestions for diagnosing and recovering from each scenario.

