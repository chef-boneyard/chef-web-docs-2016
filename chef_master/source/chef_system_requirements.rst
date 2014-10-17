=====================================================
System Requirements
=====================================================

Before installing |chef|:

* Ensure that each machine that will be a node is running a supported operating system
* Ensure that the machine that will run the |chef server| is sufficiently powerful
* Ensure that any network and firewall settings are configured correctly

Install and configure the |chef server|, then install and configure a workstation, and then run the bootstrap command from the workstation to install the |chef client| on each node.

|chef client|
=====================================================
The |chef client| can run on any node or workstation that runs one of the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - |debian|
     - 6, 7
     - i686, x86_64
   * - Enterprise Linux
     - 5, 6
     - i686, x86_64
   * - |freebsd|
     - 9
     - amd64, i386
   * - |mac os x|
     - 10.6, 10.7, 10.8, 10.9
     - x86_64
   * - |opensuse|
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
   * - |ubuntu|
     - 10.04, 10.10, 11.04, 11.10, 12.04, 12.10, 13.03, 13.10, 14.04
     - i686, x86_64
   * - |windows|
     - 2003 R2, 2008
     - i686, x86_64
   * - 
     - 7, 8, 2008 R2, 2012, 2012 R2
     - x86_64

In addition:

The |chef client| caches . 

* The recommended amount of RAM available to the |chef client| during a |chef client| run is 512MB
* The |chef client| binaries are stored in the ``/opt/chef`` directory, which requires a minimum of 200MB of disk space
* The |chef client| caches to ``/var/chef/cache`` during the |chef client| run. This is the location in which downloaded cookbooks, packages required by those cookbooks, and other large files are stored. This directory requires enough space to save all of this data and should be generously sized. 5GB is a safe number, as a starting point, but tune the size of ``/var/chef/cache`` as necessary
* Each node and workstation must have access to the |chef server| via HTTPS
* |ruby| 1.8.7, 1.9.1, 1.9.2, and 1.9.3. In general, using the version of |ruby| that is installed by the |omnibus installer| is recommended. |ruby| 1.8.7 will be deprecated in an upcoming release of the |chef client|. |ruby| 2.0 has been tested with the |chef client| and should present no issues when running the |chef client|; however, |ruby| 2.0 is not an officially supported version of |ruby| for the |chef client| (yet), but will become one in an upcoming version of the |chef client|
* The hosted |chef server| is compatible with |chef client| version 0.10.0 and greater; older clients must be upgraded before they can connect to |chef hosted|

.. * |rubygems| 1.6.2 or higher; on the |ubuntu| or |debian| platforms, |rubygems| should be installed from source

The |chef server_title|
=====================================================
The following sections describe the various requirements for the |chef server|.

Hosted |chef server_title|
-----------------------------------------------------
The hosted |chef server| has the following requirements:

* **Browser** --- |firefox|, |google chrome|, |apple safari|, or |microsoft ie| (versions 9 or better)
* Every node that will be configured by the |chef client| and every workstation that will upload data to the |chef server| must be able to communicate with the hosted |chef server|

|chef server_title|, On-premises
-----------------------------------------------------
The |chef server| can run on any of the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - |redhat enterprise linux|
     - 5, 6
     - x86_64
   * - |ubuntu|
     - 10.04, 11.04, 12.04
     - x86_64

Before installing the |chef server|, ensure that each machine has the following installed and configured properly:

* **Host names** --- Ensure that all systems have properly configured host names
* **FQDNs** --- Ensure that all systems have a resolvable |fqdn|
* **NTP** --- Ensure that every server is connected to NTP; the |chef server| is sensitive to clock drift
* **Mail Relay** --- The |chef server| uses email to send notifications for various events; a local mail transfer agent should be installed and available to the |chef server|
* **cron** --- Periodic maintenance tasks are performed using |cron|
* **git** --- |git| must be installed so that various internal services can confirm revisions
* **libfreetype and libpng** --- These libraries are required
* **Apache Qpid** --- This daemon must be disabled on |centos| and |redhat| systems
* **Required users** --- If the environment in which the |chef server| will run has restrictions on the creation of local user and group accounts, ensure that the correct users already exist

The |chef server| has the following requirements:

* **Browser** --- |firefox|, |google chrome|, |apple safari|, or |microsoft ie| (versions 9 or better)
* Every node that will be configured by the |chef client| and every workstation that will upload data to the |chef server| must be able to communicate with the |chef server|

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

|chef dk_title|
=====================================================
The |chef dk| can run on any workstation that runs one of the following systems:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - |debian|
     - 6, 7
     - x86_64
   * - |redhat enterprise linux|
     - 6
     - x86_64
   * - |mac os x|
     - 10.8, 10.9
     - x86_64
   * - |ubuntu|
     - 12.04, 13.10
     - x86_64
   * - |windows|
     - 7, 8, 8.1
     - 
   * - |windows server|
     - 2008 R2, 2012, 2012 R2
     - 
