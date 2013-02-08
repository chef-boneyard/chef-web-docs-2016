.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The front-end layer of a |chef private| topology can be scaled to as many nodes as you need for API availability. We recommend that your front-end nodes be configured behind a VIP that is then used as the access point for your nodes.

The back-end portion of your HA |chef private| can be scaled vertically to provide better IO performance for searching. We can also configure your |chef private| to cache cookbook files for faster access by your nodes when they converge.

|chef private| HA makes use of |drbd| to provide data redundancy on the back-end layer. |drbd| is designed to run on a pair of hosts, and that is the configuration officially supported by |opscode|.


