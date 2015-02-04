=====================================================
Standalone
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

Standalone configurations are appropriate for small scale environments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine.

In a Standalone configuration, all of the components of |chef private| are installed together. This machine need not be large, as any |chef private| environment that will contain a large dataset should be installed in the Tiered or High Availability configurations. The firewall requirements are also significantly reduced, since only HTTP and HTTPS need to be available to other hosts.

Hosts
=====================================================
A Standalone |chef private| host can be a virtual host with at least 5GB of free space in ``/var`` and ``/opt``. It should have at least 4GB of RAM and 4 total cores. This smaller architecture is well suited for proofs of concept or otherwise restricted environments. A full list of host requirements is listed in the installation guide.

Backup
=====================================================
In a Standalone installation, you can backup your |chef private| server using any method suitable for your environment, including |lvm| snapshots or third-party backup software. Because of the single host nature of the Standalone configuration, you should consider the timing and method of your backups with regards to the amount of time they will take and how that will impact your nodes running chef-client during the scheduled backups.

The data written and accessed by the components of the |chef private| server are stored in ``/var/opt/opscode``. There are key files in ``/etc/opscode`` that you may want to also backup in case you decide to migrate from a Standalone configuration to a High Availability configuration, these files will be used for inter-server communication.

Scaling
=====================================================
The Standalone configuration is not meant to be scaled. This configuration is explicitly to provide you with a |chef private| alternative for small, temporary, or fenced environments that will not service many nodes. To scale a |chef private| installation up from Standalone, you’ll want to take a look at either the Tiered or High Availability topologies for |chef private|.
