.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Persistent data on the backend machine of the |chef server| is primarily composed of cookbook files and directories. Separate disks should be dedicated entirely to storing this data prior to installing the |chef server|. These disks should:

* Utilize hardware |raid|
* Be configured in either |raid1|

This assumes that:

* ~300GB of raw, unpartitioned disk space is available
* The disk space presents as a single device, ``/dev/sdb``
* The storage is added to a volume group named ``opscode`` and is presented to the |chef server| by mounting on ``/var/opt/opscode`` before a reconfiguration
* The storage is added in a logical volume group named ``drbd``
* The volume group should have adequate space to enable |lvm| snapshots to be used for backups; this amount depends on many factors, including how much changes in-between snapshots, how long the snapshots will be kept, and the (eventual) size of the |chef server| database; a decent starting point when sizing |lvm| snapshots is ~10% of the raw, unpartitioned disk space

The following commands properly set up disk configuration on the backend machine:

.. code-block:: bash

   $ pvcreate /dev/sdb

and:

.. code-block:: bash

   $ vgcreate opscode /dev/sdb

and:

.. code-block:: bash

   $ lvcreate -l 80%VG -n tiered opscode
