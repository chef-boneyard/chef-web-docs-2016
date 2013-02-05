.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

High Availability
The High Availability configuration for Private Chef provides the most robust system for your environment that is fully supported by Opscode. This configuration consists of a back-end pair of hosts with redundant storage, and any number of front-end web hosts, scaled to meet your needs. The most common configuration is two front-ends behind a VIP.

Hosts
The recommended system specifications for hosts in the HA topology is similar to those recommended for a Tiered topology, and is documented in the installation guide.

Backups
Opscode recommends that the back-end systems be backed up by at least LVM snapshotting. You can also use other third-party backup software if you have it available in your environment.

The data written and accessed by the Private Chef back-ends is stored in /var/opt/opscode. There are also key files in /etc/opscode that are required for the front-end hosts to access the data processes on the back-end hosts, and these should be added to your backup mechanisms.

Scaling
The front-end layer of a Private Chef topology can be scaled to as many nodes as you need for API availability. We recommend that your front-end nodes be configured behind a VIP that is then used as the access point for your nodes.

The back-end portion of your HA Private Chef can be scaled vertically to provide better IO performance for searching. We can also configure your Private Chef to cache cookbook files for faster access by your nodes when they converge.

Private Chef HA makes use of DRBD to provide data redundancy on the back-end layer. DRBD is designed to run on a pair of hosts, and that is the configuration officially supported by Opscode.


