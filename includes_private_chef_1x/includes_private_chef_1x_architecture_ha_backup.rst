.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|opscode| recommends that the back-end systems be backed up by at least LVM snapshotting. You can also use other third-party backup software if you have it available in your environment.

The data written and accessed by the |chef private| back-ends is stored in ``/var/opt/opscode``. There are also key files in ``/etc/opscode`` that are required for the front-end hosts to access the data processes on the back-end hosts, and these should be added to your backup mechanisms.
