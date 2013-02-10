.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a Standalone installation, you can backup your |chef private| server using any method suitable for your environment, including |lvm| snapshots or third-party backup software. Because of the single host nature of the Standalone configuration, you should consider the timing and method of your backups with regards to the amount of time they will take and how that will impact your nodes running chef-client during the scheduled backups.

The data written and accessed by the components of the |chef private| server are stored in ``/var/opt/opscode``. There are key files in ``/etc/opscode`` that you may want to also backup in case you decide to migrate from a Standalone configuration to a High Availability configuration, these files will be used for inter-server communication.
