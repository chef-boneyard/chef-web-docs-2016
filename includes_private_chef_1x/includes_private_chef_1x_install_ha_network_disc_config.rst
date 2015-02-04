.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

We recommend that disks are dedicated entirely to storing the data for the |chef private| installation. These disks should be:

* Utilizing Hardware |raid|
* Be configured in either |raid1| or |raid5|
* Be identical across both of your back-end servers

Our recommended configuration utilizes the |linux| |lvm| as the backing store for |drbd|. This assumes that:

* 1TB of raw, unpartitioned disk space is available
* The disk space presents as a single device, ``/dev/sdb``
* The storage is added to a volume group named ``opscode``
* The storage is added in a logical volume group named ``drbd``
* The volume group should have adequate space to enable |lvm| snapshots to be used for backups (at least 40GB)

The following commands would properly set up the back-end disk configuration for |drbd|:

.. code-block:: bash

   $ pvcreate /dev/sdb

and:

.. code-block:: bash

   $ vgcreate opscode /dev/sdb

and:

.. code-block:: bash

   $ lvcreate -l 80%VG -n drbd opscode

.. warning:: Talk with your systems administrators about disk configuration if you are at all uncertain of how to configure a new logical volume with |lvm|, as the operations can be destructive.


