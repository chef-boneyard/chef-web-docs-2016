.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up backups on your HA servers, you will need a cron job that looks like this in /etc/cron.d/opc_snapshot:

.. code-block:: bash

   # rendered by private-chef-ctl reconfigure, do not modify
   #Place me in /etc/cron.d/opc_snapshot and remove comment below to activate
   SHELL=/bin/bash
   HOME=/opt/opscode/bin
   PATH=/usr/bin:/usr/sbin:/bin:/opt/opscode/embedded/bin:/opt/opscode/bin
   MAILTO=SOMEONE@payingattention
   #17 23 * * * root drbd-backups -g opscode -l drbd > /dev/null 2>&1 

A cronjob run of the above on a |chef private| system results in a new snapshot logical volume named
/dev/opscode/backup-{+%Y-%m-%d-%H-%M-%S} (preceding is a format string for year, month, day, so on)
being mounted. After a successful run of the cronjob, the ``mount`` command will show the new logical
volume mounted on the /var/opt/opscode/drbd-backups mountpoint. The backup script attempts to make a
snapshot logical volume in unused space in the opscode volume group. After the snapshot creation,
it attempts to mount it, and then that snapshot stays mounted for 24 hours. Upon the next run, the
backup script tries to unmount and destroy the snapshot and repeat the sequence.


.. note:: The ``drbd-backups`` script with default settings requires at least 40GB free space in the opscode volume group on your |chef private| system.
