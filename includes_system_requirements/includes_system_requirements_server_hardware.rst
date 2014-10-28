.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

All machines in a |chef server| deployment (including a standalone |chef analytics| machine) have the following requirements.

For a standalone deployment:

* 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 4 GB of RAM
* 5 GB of free disk space in ``/opt``
* 5 GB of free disk space in ``/var``

For a tiered deployment:

* 8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 16GB RAM
* 2 x 300GB SAS RAID1 drives
* Hardware RAID card
* 1 GigE NIC interface
* 20 GB of free disk space in ``/opt``
* 40 GB of free disk space in ``/var``
* A back-end server; all other systems will be front-end servers.

For a high availability deployment:

* 8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 16GB RAM
* 2 x 300GB SAS RAID1 drives
* Hardware |raid| card
* 1 x GigE NIC interface
* 20 GB of free disk space in ``/opt``
* 40 GB of free disk space in ``/var``
* Two back-end servers; as many front-end servers as required.

.. note:: Front end machines, when load balanced, may have fewer than 4 cores and 4 GB of RAM.
.. warning:: Chef Server may under no circumstances have an NFS storage backend, whether virtualized or physical.
  Chef Servers operate databases and write logs quickly, operations which have unpredictable behavior when run 
  over a network filesystem, not to mention poorly defined locking and syncing characteristics.
