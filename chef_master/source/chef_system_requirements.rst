=====================================================
System Requirements
=====================================================

Before installing |chef|:

* Ensure that each machine that will be a node is running a supported operating system
* Ensure that the machine that will run the |chef server| is sufficiently powerful
* Ensure that any network and firewall settings are configured correctly

Install and configure the |chef server|, then install and configure a workstation, and then run the bootstrap command from the workstation to install |chef| on each node.

Chef (for Nodes and Workstations)
=====================================================
|chef| can run on the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - Debian
     - 6
     - i686, x86_64
   * - Enterprise Linux
     - 5, 6
     - i686, x86_64
   * - Mac OS X
     - 10.6, 10.7
     - x86_64
   * - openSUSE
     - 12.1
     - i686, x86_64
   * - Solaris
     - 5.9
     - sparc
   * - 
     - 5.10. 5.11
     - i386, sparc
   * - SUSE Enterprise
     - 11.2
     - i686, x86_64
   * - Ubuntu
     - 10.04, 10.10, 11.04, 11.10, 12.04, 12.10
     - i686, x86_64
   * - Windows
     - 2003 R2, 2008
     - i686, x86_64
   * - 
     - 2008 R2, 2012
     - x86_64

The recommended amount of RAM available to the |chef client| during a |chef| run is 512MB.

Each node and workstation must be able to communicate with the |chef server|.


The |chef server|
=====================================================

|chef hosted|
-----------------------------------------------------
|chef hosted| has the following requirements:

* Firefox xxxxx, Google Chrome xxxxx, Internet Explorer xxxxx, other browsers?
* xxxxx
* Each node that will be configured by |chef| must be able to communicate with |chef hosted|
* xxxxx


|chef private|
-----------------------------------------------------
|chef private| has the following requirements:

* xxxxx
* xxxxx
* xxxxx
* xxxxx
* xxxxx
* xxxxx
* xxxxx

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

Open Source |chef server|
-----------------------------------------------------
The open source |chef server| has the following requirements:






The open source |chef server| can run on the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - Enterprise Linux
     - 5, 6
     - x86_64
   * - Ubuntu
     - 10.04, 10.10, 11.04, 11.10, 12.04, 12.10
     - i686, x86_64






* 1.0 GB RAM, minimum (for standalone testing purposes); 16 GB RAM recommended (in any type of production environment)
* xxxxx
* xxxxx
* xxxxx
* xxxxx
* xxxxx
* xxxxx

The following operating systems and versions:

* Enterprise Linux, Ubuntu (James to figure out from download page)


