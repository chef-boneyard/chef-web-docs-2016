.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service redis_lb| service situated on the Backend handles requests from the |nginx| service on all Frontends in a |chef server| cluster.

In the event of a disk full condition on the filesystem where |redis|' data store lives, |redis|' primary rdb file `dump.rdb` can become corrupt
by being saved as a zero byte file.

When you attempt to start the |service redis_lb| service, you will notice in it's logs the following "Short read" statement. This will likely be happening in a loop as runit tries to restart the service.

.. code-block:: bash

   2015-03-23_16:11:31.44256 [11529] 23 Mar 16:10:09.624 # Server started, Redis version 2.8.2
   2015-03-23_16:11:31.44256 [11529] 23 Mar 16:10:09.624 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
   2015-03-23_16:11:31.44257 [11529] 23 Mar 16:11:31.438 # Short read or OOM loading DB. Unrecoverable error, aborting now.

You will also notice at the same time that the dump.rdb is an empty file.

.. code-block:: bash

   ls -al /var/opt/opscode/redis_lb/data/
   total 20
   drwxr-x--- 2 opscode opscode 4096 Mar 23 15:58 .
   drwxr-x--- 4 opscode opscode 4096 Dec 22 18:59 ..
   -rw-r--r-- 1 opscode opscode    0 Mar 23 15:58 dump.rdb

This is caused by a bug in redis where it will allow a SAVE to succeed even when the disk has been full for some time, not just on edge cases where the disk fills as redis is writing.

**To fix the issue**

1. Stop the redis_lb service

  .. code-block:: bash

     chef-server-ctl stop redis_lb

2. Remove the corrupt files

  .. code-block:: bash

     cd /var/opt/opscode/redis_lb/data
     rm -fr *rdb

3. Start the redis_lb service

  .. code-block:: bash

     chef-server-ctl start redis_lb

     less /var/log/opscode/redis_lb/current
     2015-03-23_17:05:18.82516 [28676] 23 Mar 17:05:18.825 * The server is now ready to accept connections on port 16379

4. Reconfigure to repopulate redis. Redis should be reconfigured, repopulated, and restarted in this run.

  .. code-block:: bash

     chef-server-ctl reconfigure

5. Check repopulation. A properly populated redis_lb should have the key `dl_default`

  .. code-block:: bash

     /opt/opscode/embedded/bin/redis-cli -p 16379 keys \*
     1) "dl_default"

Things should be back to normal at this point.

-----------------------------------------------------

|redis cli| is the management tool for |redis|. It can be used to obtain information about keys that are being used with the |chef server|. For more information about |redis cli|, see http://redis.io/commands.

To verify that the connection to |redis| is alive, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/redis/
     export PATH=/opt/opscode/bin:/opt/opscode/embedded/bin:$PATH
     bin/redis-cli PING

to return:

.. code-block:: bash

   PONG
