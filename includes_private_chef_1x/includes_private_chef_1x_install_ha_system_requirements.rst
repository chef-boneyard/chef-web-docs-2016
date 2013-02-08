.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

* 8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 16GB RAM
* 2 x 300GB SAS RAID1 drives
* Hardware RAID card
* 1 x GigE NIC interface
* 20 GB of free disk space in /opt
* 40 GB of free disk space in /var

.. note:: While you can certainly run private chef on smaller systems, our assumption with the Tiered and High Availability installations are that they are intended for production use. The above configuration is rated at 1,500 nodes converging every 5 minutes.

This architecture consists of two back-end servers, with as many front-end servers as you desire.