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

In addition:

* The recommended amount of RAM available to the |chef client| during a |chef| run is 512MB
* Each node and workstation must have access to the |chef server| via HTTPS
* |knife| plugins require |chef| <VERSION?> or greater; ``knife windows`` requires |chef| <VERSION?>


The |chef server|
=====================================================
The following sections describe the various requirements for the three |chef server| types.

.. note:: For testing purposes, open source |chef server| can be run with a very small footprint, such as an m1.small instance on |amazon aws| or a local virtual machine. In this type of scenario, at least 1GB of memory should be available to the |chef server|.

|chef hosted|
-----------------------------------------------------
|chef hosted| has the following requirements:

* **Browser** --- |firefox|, |google chrome|, |apple safari|, or |microsoft ie| (versions 8 and 9)
* Every node that will be configured by |chef| and every workstation that will upload data to the |chef server| must be able to communicate with |chef hosted|


|chef private|
-----------------------------------------------------
Before installing |chef private|, ensure that each machine has the following installed and configured properly:

* **Host names** --- Ensure that all systems have properly configured host names.
* **FQDNs** --- Ensure that all systems have a resolvable |fully qualified domain name|.
* **NTP** --- Ensure that every server on which |chef private| is running is connected to NTP; |chef private| is sensitive to click drift.
* **Mail Relay** --- |chef private| uses email to send notifications for various events; a local mail transfer agent should be installed and available to the |chef server|.
* **cron** --- |chef private| performs periodic maintenance tasks using |cron|.
* **git** --- |git| must be installed so that various internal services can confirm revisions.
* **libfreetype and libpng** --- |chef private| requires these libraries.
* **Apache Qpid** --- This daemon must be disabled on |centos| and |redhat| systems.
* **Required users** --- If the environment in which |chef private| will run has restrictions on the creation of local user and group accounts, ensure that the correct users already exist.

|chef private| has the following requirements:

* **Browser** --- |firefox|, |google chrome|, |apple safari|, or |microsoft ie| (versions 8 and 9)
* Every node that will be configured by |chef| and every workstation that will upload data to the |chef server| must be able to communicate with |chef hosted|

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
Before installing the open source |chef server|, ensure that each machine has the following installed and configured properly:

* **Cores** --- 4; 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* **RAM** --- 4.0 GB
* **Free disk space** --- 5.0 GB of free disk space in ``/opt``; 5.0 GB of free disk space in ``/var``

The open source |chef server| can run on the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - Enterprise Linux (e.g. RHEL, CentOS)
     - 5, 6
     - x86_64
   * - Ubuntu
     - 10.04, 10.10, 11.04, 11.10, 12.04, 12.10
     - i686, x86_64



