.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

We recommend that you have disks entirely dedicated to storing the data for your |chef private| installation, and they should be:

* Utilizing Hardware RAID
* Be configured in either RAID1 or RAID5
* Be identical across both of your back-end servers

Our recommended configuration utilizes the Linux Logical Volume Manager (LVM) as the backing store for DRBD. Assuming:

* You have 1TB of raw, unpartitioned disk space
* It presents as a single device, /dev/sdb
* The storage should be added to a volume group named opscode
* And in a logical volume group named drbd
* The volume group should have adequate space to enable LVM snapshots to be used for backups (at least 40GB)

The following commands would properly set up the back-end disk configuration for DRBD:

Setting up LVM for DRBD

.. code-block:: bash

   $ pvcreate /dev/sdb

and:

.. code-block:: bash

   $ vgcreate opscode /dev/sdb

and:

.. code-block:: bash

   $ lvcreate -L 900G --name drbd opscode

.. warning:: Talk with your systems administrators about disk configuration if you are at all uncertain of how to configure a new logical volume with LVM, as the operations can be destructive.


