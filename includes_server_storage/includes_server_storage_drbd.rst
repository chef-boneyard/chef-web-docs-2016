.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|drbd| may be resized. First, make a backup of the |chef server| data.

* The mounted filesystem on the primary backend server is ``ext4``
* The backing device for the mounted ``ext4`` filesystem is an LVM2 volume named ``/dev/opscode/drbd``

.. note:: For more information about |lvm|, see http://www.tldp.org/HOWTO/LVM-HOWTO/. For more information about |drbd|, see http://drbd.linbit.com/users-guide/s-resizing.html.