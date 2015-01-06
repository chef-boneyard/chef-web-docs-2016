Prereqs
-----------------------------------------------------

- Make a backup using your current, tested scheme

- The mounted filesystem on your Primary backend server is ext4

- DRBD's backing device for your mounted ext4 filesystem is an LVM2 volume named /dev/opscode/drbd


Resize a DRBD Device
-----------------------------------------------------

After making sure the backups are in order, make a careful note of the
current size of the /dev/opscode/drbd logical volume and mountpoint with the following commands

.. code-block:: bash

    sudo lvdisplay -v --units 4096k /dev/opscode/drbd
    df -k /var/opt/opscode/drbd/data

Be certain that DRBD is in good shape on both systems. The primary should show "Primary/Secondary UpToDate/UpToDate" and vice versa.

.. code-block:: bash

    cat /proc/drbd

Possibly add a new device to both backend systems
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Do whatever is necessary to present a new device to the system.
The volume group on both backends will be extended onto the new device.
This may not be necessary if you have unused space beyond 20% free in your opscode VG.

Resize VG on both backend systems
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Substitute your own device name.

.. code-block:: bash

    pvcreate /dev/sdb1
    vgextend opscode /dev/sdb1

Resize LV identically on both backend systems
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Replace SIZE with "10GiB" or similar. Leave about 20% room for
snapshots in the volume group.

Due to differences in the space available for logical volumes on the
Primary and Secondary, which can be caused by existing snapshots, we
need to specify the new size of the logical volume in absolute terms on
both sides of the DRBD link, rather than in percentages. Be careful to
leave about 20% of the total available space free on both sides, minus
any snapshots.

.. code-block:: bash

    lvextend -LSIZE /dev/opscode/drbd

For example, if our volume group has 10GB total, we should only allocate a
maximum of 8GB to our logical volume, leaving 20% of the VG free, like this

.. code-block:: bash

    lvextend -L8GiB /dev/opscode/drbd

Resize DRBD on the current Primary backend only
+++++++++++++++++++++++++++++++++++++++++++++++++++++

On the current Primary, proceed to extend the size of the DRBD device

.. code-block:: bash

    sudo drbdadm resize pc0

The size of the /dev/drbd0 backing device's mountpoint should grow. This change may take some time to complete, as DRBD may want to sync the changes across the network, even though they are empty blocks.

Resize Filesystem on the current Primary backend only
+++++++++++++++++++++++++++++++++++++++++++++++++++++

.. code-block:: bash

    sudo resize2fs /dev/drbd/by-disk/opscode/drbd

Check Resize
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Compare the numbers gathered in `Resize a DRBD Device`_ above with the output from the same commands now, after the online resize.

NOTES
+++++++++++++++++++++++++++++++++++++++++++++++++++++

You can find references for LVM and DRBD at the following locations

- LVM_
- DRBD_

.. _LVM: http://www.tldp.org/HOWTO/LVM-HOWTO/
.. _DRBD: http://drbd.linbit.com/users-guide/s-resizing.html
