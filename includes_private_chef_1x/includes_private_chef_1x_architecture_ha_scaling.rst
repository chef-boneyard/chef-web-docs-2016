.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The front-end layer of a |chef private| topology can be scaled to as many nodes as required. It is recommended that all front-end nodes be configured behind a virtual IP address, which is then used as the access point for your nodes.

The back-end portion of any High Availability topology can be scaled vertically to provide better I/O performance for searching. |chef private| can also be configured to cache cookbook files, which will improve of each node during every |chef| run.

The High Availability topology uses |drbd| to provide data redundancy on the back-end layer. |drbd| is designed to run on a pair of hosts and that is the configuration officially supported by |opscode|.


