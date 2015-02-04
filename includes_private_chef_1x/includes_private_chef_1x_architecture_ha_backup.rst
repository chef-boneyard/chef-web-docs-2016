.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|company_name| recommends that the back-end systems be backed up using |lvm| snapshots or some other third-party software that provides for the same type of functionality. The data written and accessed by the |chef private| back-end servers is stored in ``/var/opt/opscode``. There are also key files stored in ``/etc/opscode``, which are required for the front-end hosts to access the data processes on the back-end hosts. The files in ``/etc/opscode`` should be part of the backup strategy.
