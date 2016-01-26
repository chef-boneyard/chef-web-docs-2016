.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Over time, and with enough data, disks will fill up or exceed the per-disk quotas that may have been set for them and they will not be able to write data. A disk that is not able to write data will not be able to support certain components of the |chef server|, such as |postgresql|, |rabbitmq|, service log files, and deleted file handles. Monitoring disk usage is the best way to ensure that disks don't fill up or exceed their quota.

Commands that can be used to monitor global disk usage on a Chef Server with a typical installation

.. code-block:: bash

   $ du -sh /var/opt/opscode 
   $ du -sh /var/log/opscode 

To stay healthy, neither one of these areas should ever become more than 80% used.
If disk space begins to grow at a rapid pace, the best option in that case is to shut down and work with Chef
to identify the cause.

The following components should be monitored for signs that disks may be rapidly filling up:

* **PostgreSQL** |postgresql| is the data store for the |chef server|.
* **Solr** |apache solr| is the search index for the |chef server|. The search index is unable to perform its normal segment merging operations when its data store falls below 50% free space.
* **RabbitMQ** The |rabbitmq| data folder can fill up if the |service expander| service is not able to keep up with the data being moved into the search database by |rabbitmq|. When the |service expander| service falls behind, |rabbitmq| will start storing the individual messages on-disk while it waits for the |service expander| service to catch up. If the |rabbitmq| disk fills up completely, |rabbitmq| will need to be restarted to free up the disk space and any data that was stored on-disk will be lost.
* **Log files** If ``/var/log/opscode`` is taking up a lot of disk space, ensure that the |chef server| log rotation cron job is running without errors. These errors can be found in ``/var/log/messages``, ``/var/log/syslog`` and/or the root user's local mail.
* **Deleted file handles** Running processes with file handles associated with one (or more) deleted files will prevent the disk space being used by the deleted files from being reclaimed. Use the ``sudo lsof | grep '(deleted)'`` command to find all deleted file handles. 



