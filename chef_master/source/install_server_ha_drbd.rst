.. This page is the Chef 12 server install page, for high availabilty in AWS.

=====================================================
High Availability: DRBD
=====================================================

.. no mention of supported platforms, how do folks get to this page? Have they already seen something about supported platforms for the chef server?

This topic describes how to set up the |chef server| for high availability using physical machines and |drbd|.

Prerequisites
=====================================================
Before installing the |chef server| software, perform the following steps:

* Backend machines `should have a dedicated connection <http://www.drbd.org/users-guide/s-prepare-network.html>`_. This is required for replication between the two machines.
* Backend machines will share a virtual IP address that must also be accessible from each frontend server. This virtual IP address is created and managed by the |chef server|, but will also need to be added to the DNS so that all machines in the high availability configuration may access it.
* Persistent data on backend machines of the |chef server| is primarily composed of cookbook files and directories. Separate disks should be dedicated entirely to storing this data prior to installing the |chef server|.
* Load-balancing should be used with frontend machines, along with a DNS entry for the virtual IP address used for load balancing. This virtual IP address is added to the |chef server rb| file as the ``api_fqdn``. 
* All required ports must be open. See the Firewalls section (below) for the list of ports. All connections to and from the |chef server| are accomplished via TCP. Refer to the operating system's manual or your systems administrators for instructions on how to configure to ports, if necessary.
* The hostname for the |chef server| must be an |fqdn|, including the domain suffix, and must be resolvable by the other backend and frontends. See `Hostnames, FQDNs <http://docs.getchef.com/install_server_pre.html#hostnames>`_ for more information.

Disk Configuration
=====================================================
Persistent data on backend machines of the |chef server| is primarily composed of cookbook files and directories. Separate disks should be dedicated entirely to storing this data prior to installing the |chef server|. These disks should:

* Utilize hardware |raid|
* Be configured in either |raid1| or |raid5|
* Be identical across both of your backend servers

The recommended configuration utilizes the |linux| |lvm| as the backing store for |drbd|. This assumes that:

* ~300GB of raw, unpartitioned disk space is available
* The disk space presents as a single device, ``/dev/sdb``
* The storage is added to a volume group named ``opscode``
* The storage is added in a logical volume group named ``drbd``
* The volume group should have adequate space to enable |lvm| snapshots to be used for backups; this amount depends on many factors, including how much changes in-between snapshots, how long the snapshots will be kept, and the (eventual) size of the |chef server| database; a decent starting point when sizing |lvm| snapshots is ~10% of the raw, unpartitioned disk space

The following commands would properly set up the back-end disk configuration for |drbd|:

.. code-block:: bash

   $ pvcreate /dev/sdb

and:

.. code-block:: bash

   $ vgcreate opscode /dev/sdb

and:

.. code-block:: bash

   $ lvcreate -l 80%VG -n drbd opscode

.. warning:: Talk with your systems administrators about disk configuration if you are at all uncertain of how to configure a new logical volume with |lvm|, as the operations can be destructive.


Primary Backend
=====================================================
Use the following steps to set up the primary backend |chef server|:

#. Download the packages from http://downloads.getchef.com/chef-server/.

.. we'll want to make "chef-server-core" (chef server 12 package name) a swap, it may change in the future
#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Create a file named |chef server rb| that is located in the ``/etc/opscode/`` directory. See the |chef server rb| section below for an example of the settings and values that are required.

#. Install |drbd|. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm --import http://elrepo.org/RPM-GPG-KEY-elrepo.org

   then:

   .. code-block:: bash
      
      $ yum install -y http://elrepo.org/elrepo-release-6-5.el6.elrepo.noarch.rpm

   and then:

   .. code-block:: bash
      
      $ yum install -y drbd84-utils kmod-drbd84

   .. note:: The |elrepo| provides updated drivers for the |linux| family of enterprise distributions (based on |redhat enterprise linux|.) With the introduction of |redhat enterprise linux| 6, |redhat| no longer distributes |drbd| within the kernel. These modules provide properly built, community tested releases of the required kernel and |drbd| userland.

   For |ubuntu|:

   .. code-block:: bash
      
      $ apt-get install drbd8-utils

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will configure |drbd|. The installer will pause and ask for confirmation that |drbd| has been set up. Confirm (``CTRL-C``), and then run the following commands:

   .. code-block:: bash
      
      $ drbdadm create-md pc0

   then:

   .. code-block:: bash
      
      $ drbdadm up pc0


|chef server rb|
=====================================================
Each |chef server| in a high availabilty configuration must have an identical |chef server rb| file that is located in the ``/etc/opscode/`` directory on each server. This file describes the topology of the high availability configuration. On the primary backend machine, create a file named |chef server rb| and save it in the ``/etc/opscode/`` directory.

Add the following settings to the |chef server rb| file:

#. Define the topology type:

   .. code-block:: ruby

      topology "ha"

#. Define the primary backend server:

   .. code-block:: ruby

      server "FQDN",
        :ipaddress => "IP_ADDRESS",
        :role => "backend",
        :bootstrap => true,
        :cluster_ipaddress => "CLUSTER_IPADDRESS"

   Replace ``FQDN`` with the |fqdn| of the server and ``IP_ADDRESS`` with the IP address of the server. The role is a backend machine is ``"backend"``. If the backend machine is used to bootstrap the |chef server| installation, replace ``CLUSTER_IPADDRESS`` with the IP address of the interface that is used for cluster communications. For example, the same IP address that is used by |keepalived| and |drbd|. If the |chef server| is not used to bootstrap the |chef server| installation, exclude the ``:cluster_ipaddress`` entry.

#. Define the secondary backend server:

   .. code-block:: ruby

      server "FQDN",
        :ipaddress => "IPADDRESS",
        :role => "backend",
        :cluster_ipaddress => "CLUSTER_IPADDRESS"

   Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. Replace ``CLUSTER_IPADDRESS`` with the IP address of the server’s interface assigned for cluster communications. If no such interface is configured, exclude the ``cluster_ipaddress`` entry.

#. Define the backend virtual IP address:

   .. code-block:: ruby

      backend_vip "FQDN",
        :ipaddress => "IP_ADDRESS",
        :device => "eth0",

   Replace ``FQDN`` with the |fqdn| of the xxxxx. Replace ``IP_ADDRESS`` with the virtual IP address of the xxxxx. The ``:device`` parameter should be the ethernet interface to which the floater virtual IP address will bind. This is typically the public interface of the server.

#. Define each frontend machine:

   .. code-block:: ruby

      server "FQDN",
        :ipaddress => "IP_ADDRESS",
        :role => "frontend"

   Replace ``FQDN`` with the |fqdn| of the frontend machine. Replace ``IP_ADDRESS`` with the IP address of the frontend machine. Set ``:role`` to ``"frontend"``.

   Add separate entry in the |chef server rb| file for each frontend machine.

#. Define the API |fqdn|:

   .. code-block:: ruby

      api_fqdn "FQDN"

   Replace ``FQDN`` with the |fqdn| of the load balanced virtual IP address, which should be equal to the |fqdn| for the service URI that is used by the |chef server|.



Secondary Backend
=====================================================
Use the following steps to set up the secondary backend |chef server|:

#. Repeat the same steps as described for the primary machine.

#. Create the ``/etc/opscode/`` directory, and then copy the entire contents of the ``/etc/opscode`` directory from the primary backend machine, including all certificates and the |chef server rb| file.

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will configure |drbd|. The installer will pause and ask for confirmation that |drbd| has been set up. Confirm (``CTRL-C``), and then run the following commands:

   .. code-block:: bash
      
      $ drbdadm create-md pc0

   then:

   .. code-block:: bash
      
      $ drbdadm up pc0


Establish Failover
=====================================================
To establish failover between the two backend machines, do the following:

#. On the primary backend, define the server as the primary shared device. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ drbdadm primary --force pc0

   For |ubuntu|:

   .. code-block:: bash
      
      $ drbdadm -- --overwrite-data-of-peer primary pc0

   After a few minutes, the |chef server| will be installed.

#. On the primary backend, mount the file system. For example, a file system named ``ext4``:

   .. code-block:: bash
      
      $ mkfs.ext4 /dev/drbd0

   then:

   .. code-block:: bash
      
      $ mkdir -p /var/opt/opscode/drbd/data

   and then:

   .. code-block:: bash
      
      $ mount /dev/drbd0 /var/opt/opscode/drbd/data

#. Synchronize |drbd|. This process **MUST** be allowed to complete to ensure that |drbd| is synchronized with all devices. 

   .. note:: Under normal operation, |drbd| dedicates only a portion of the available disk bandwidth to initial/complete re-synchronization. This ensures that new data written to the shared device is also synchronized.

   |drbd| can be configured to utilize more bandwidth during the initial synchronization. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ drbdadm disk-options --resync-rate=1100M pc0

   For |ubuntu|:

   .. code-block:: bash
      
      $ drbdsetup /dev/drbd0 syncer -r 1100M

   To observe the synchronization process, run the following:

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

   Synchronization is complete hen the ``ds:`` section reads ``UpToDate/UpToDate``.

#. When synchronization is complete, run the following command on the primary backend machine:

   .. code-block:: bash

      $ touch /var/opt/opscode/drbd/drbd_ready

#. Reconfigure the primary |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure


Frontend
=====================================================
For each frontend machine, use the following steps to set up the |chef server|:

#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Create the ``/etc/opscode/`` directory, and then copy the entire contents of the ``/etc/opscode`` directory from the primary backend machine, including all certificates and the |chef server rb| file.

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure


Enable Premium Features
=====================================================
Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following commands:

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst


Reference
=====================================================
The following sections show an example |chef server rb| file and a list of the ports that are required by the |chef server|.

|chef server rb|
-----------------------------------------------------
A completed |chef server rb| configuration file for a four server tiered |chef server| cluster, consisting of:

.. list-table::
   :widths: 100 150 150 100
   :header-rows: 1

   * - FQDN
     - Real IP Address
     - Cluster IP Address
     - Role
   * - be1.example.com
     - 192.168.4.1
     - 10.1.2.10
     - backend
   * - be2.example.com
     - 192.168.4.6
     - 10.1.2.12
     - backend
   * - fe1.example.com
     - 192.168.4.2
     - 
     - frontend
   * - fe2.example.com
     - 192.168.4.3
     - 
     - frontend
   * - fe3.example.com
     - 192.168.4.4
     - 
     - frontend
   * - chef.example.com
     - 192.168.4.5
     - 
     - load balanced frontend VIP
   * - be.example.com
     - 192.168.4.7
     - 
     - load balanced backend VIP

Looks like this:

.. code-block:: ruby

   topology "ha"
   
   server "be1.example.com",
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "10.1.2.10"
   
   server "be2.example.com",
     :ipaddress => "192.168.4.6",
     :role => "backend",
     :cluster_ipaddress => "10.1.2.12"
   
   backend_vip "be.example.com",
     :ipaddress => "192.168.4.7",
     :device => "eth0"
   
   server "fe1.example.com",
     :ipaddress => "192.168.4.2",
     :role => "frontend"
   
   server "fe2.example.com",
     :ipaddress => "192.168.4.3",
     :role => "frontend"
   
   server "fe3.example.com",
     :ipaddress => "192.168.4.4",
     :role => "frontend"
   
   api_fqdn "chef.example.com"



Firewalls
-----------------------------------------------------
All of the ports used by the |chef server| are TCP ports. Refer to the operating system's manual or site systems administrators for instructions on how to enable changes to ports, if necessary. 

Backend
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For back-end servers in an |chef server| installation:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|
   * - 9463
     - |service bifrost|
   * - 9671
     - |service nginx|
   * - 9680
     - |service nginx|
   * - 9685
     - |service nginx|
   * - 9683
     - |service nginx|
   * - 8983
     - |service solr|
   * - 5432
     - |service postgresql|
   * - 5672
     - |service rabbitmq|
   * - 16379
     - |service redis_lb|
   * - 4321
     - |service bookshelf|
   * - 7788-7799
     - |drbd|


Frontend
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For front-end servers in an |chef server| installation:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|

