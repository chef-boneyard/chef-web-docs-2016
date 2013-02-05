.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Standalone

Standalone configurations are appropriate for small scale environments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine.

In a standalone configuration, all of the components of Private Chef are installed together. This machine need not be large, as any Private Chef environment that will contain a large dataset should be installed in the Tiered or High Availability configurations. The firewall requirements are also significantly reduced, since only HTTP and HTTPS need to be available to other hosts.

Hosts

A Standalone Private Chef host can be a virtual host with at least 5GB of free space in /var and /opt. It should have at least 4GB of RAM and 4 total cores. This smaller architecture is well suited for proofs of concept or otherwise restricted environments. A full list of host requirements is listed in the installation guide.

Backups

In a Standalone installation, you can backup your Private Chef server using a method suitable for your environment, including LVM snapshots or using third-party backup software. Because of the single host nature of the Standalone configuration, you should consider the timing and method of your backups with regards to the amount of time they will take and how that will impact your nodes running chef-client during the scheduled backups.

The data written and accessed by the components of the Private Chef server are stored in /var/opt/opscode. There are key files in /etc/opscode that you may want to also backup in case you decide to migrate from a Standalone configuration to HA; these files will be used for inter-server communication.

Scaling

Standalone configuration is not meant to be scaled; this configuration is explicitly to provide you with a Private Chef alternative for small, temporary, or fenced environments that will not service many nodes. To scale a Private Chef installation up from Standalone, you’ll want to take a look at either the Tiered or High Availability topologies for Private Chef.

