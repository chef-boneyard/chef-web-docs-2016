.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A filled data disk may prevent the various components of |chef server oec| that store data on-disk from functioning properly, including |rabbitmq|, log files, and deleted file handles.

The following components should be monitored for signs that disks may be rapidly filling up:

* **RabbitMQ** The |rabbitmq| data folder can fill up if the |service expander| service is not able to keep up with the data being moved into the search database by |rabbitmq|. When the |service expander| service falls behind, |rabbitmq| will start storing the individual messages on-disk while it waits for the |service expander| service to catch up. If the |rabbitmq| disk fills up completely, |rabbitmq| will need to be restarted to free up the disk space and any data that was stored on-disk will be lost.
* **Log files** If ``/var/log/opscode`` is taking up a lot of disk space, ensure that the |chef server oec| log rotation cron job is running without errors. These errors can be found in ``/var/log/messages``, ``/var/log/syslog`` and/or the root user's local mail.
* **Deleted file handles** Running processes with file handles associated with one (or more) deleted files will prevent the disk space being used by the deleted files from being reclaimed. Use the ``sudo lsof | grep '(deleted)'`` command to find all deleted file handles. 



