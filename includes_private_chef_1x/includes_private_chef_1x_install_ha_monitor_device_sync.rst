.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Before proceeding with the installation, |drbd| MUST be allowed to fully synchronize all devices. To observe the synchronization process, you can run:

.. code-block:: bash

   $ watch -n1 cat /proc/drbd

Output similar to the following will be shown:

.. code-block:: bash

   cat /proc/drbd output
   
   version: 8.4.1 (api:1/proto:86[STRIKEOUT:100)
   GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by
   dag@Build64R6, 2011]12[STRIKEOUT:21 06:08:50
     0: cs:SyncSource ro:Primary/Secondary ds:UpToDate/Inconsistent C r]—-
     ns:3071368 nr:0 dw:0 dr:3075736 al:0 bm:187 lo:0 pe:13 ua:4 ap:0 ep:1
     wo:b oos:12685660
     [==>……………..] sync’ed: 19.5% (12388/15372)M
     finish: 0:11:00 speed: 19,188 (24,468) K/sec

When the ``ds`` section of the output reads ``UpToDate/UpToDate``, the synchronization is complete.

Under normal operation, |drbd| dedicates only a portion of the available disk bandwidth to initial/complete re-synchronization. This is to ensure that new data that may be written to the shared device is also being synchronized. To enable |drbd| to utilize more of the bandwidth available during the initial synchronization, you can run:

Speeding up initial synchronization on |redhat| and |centos| 6:

.. code-block:: bash

   $ drbdadm disk-options --resync-rate=1100M pc0

Speeding up initial synchronization on |ubuntu|:

.. code-block:: bash

   $ drbdsetup /dev/drbd0 syncer -r 1100M

With synchronization complete, |drbd| is ready to be used on the bootstrap node. Let |chef private| know that |drbd| is ready by running the following command:

.. code-block:: bash

   $ touch /var/opt/opscode/drbd/drbd_ready




