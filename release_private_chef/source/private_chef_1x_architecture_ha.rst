=====================================================
High Availability
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

The High Availability configuration for |chef private| provides for a robust system that is fully supported by |company_name|. This configuration consists of a back-end pair of hosts with redundant storage, and any number of front-end web hosts, scaled to meet your needs. The most common configuration is two front-ends behind a virtual IP address.

Hosts
=====================================================
The recommended system specifications for hosts in the High Availability topology is similar to those recommended for a Tiered topology, and is documented in the installation guide.

Backup
=====================================================
|company_name| recommends that the back-end systems be backed up using |lvm| snapshots or some other third-party software that provides for the same type of functionality. The data written and accessed by the |chef private| back-end servers is stored in ``/var/opt/opscode``. There are also key files stored in ``/etc/opscode``, which are required for the front-end hosts to access the data processes on the back-end hosts. The files in ``/etc/opscode`` should be part of the backup strategy.

Scaling
=====================================================
The front-end layer of a |chef private| topology can be scaled to as many nodes as required. It is recommended that all front-end nodes be configured behind a virtual IP address, which is then used as the access point for your nodes.

The back-end portion of any High Availability topology can be scaled vertically to provide better I/O performance for searching. |chef private| can also be configured to cache cookbook files, which will improve of each node during every |chef| run.

The High Availability topology uses |drbd| to provide data redundancy on the back-end layer. |drbd| is designed to run on a pair of hosts and that is the configuration officially supported by |company_name|.
