.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

On the bootstrap server, assuming you are using ``ext4`` as your filesystem:

Creating the filesystem for DRBD

.. code-block:: bash

   $ mkfs.ext4 /dev/drbd0
   $ mkdir -p /var/opt/opscode/drbd/data
   $ mount /dev/drbd0 /var/opt/opscode/drbd/data
