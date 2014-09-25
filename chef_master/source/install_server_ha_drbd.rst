.. This page is the Chef 12 server install page, for high availabilty in AWS.

=====================================================
High Availability: DRBD
=====================================================

placeholder

Prerequisites
=====================================================
Before installing the |chef server| software, perform the following steps:

#. xxxxx.
#. xxxxx.
#. xxxxx.
#. xxxxx.


THE BELOW IS WHAT THE AWS TOPIC HAS, FOR REFERENCE WHILE WRITING

#. Use an |amazon vpc|. |amazon ec2_classic| is not supported.
#. Create appropriate security groups to contain the backend instances. The only requirement for the |chef server| is that |icmp| is permitted between the two backend instances; |keepalived| requires it for communication and heartbeat.
#. Launch two servers, one for the primary backend |chef server| and the other for the secondary backend |chef server|. Use the same |amazon ami| so that both backend servers have identical platform and versions. The servers must be in the same |amazon zones|.
#. Create an |amazon ebs| volume to store the |chef server|'s data. It is recommended that you use an |amazon ebs_volume_provisioned| volume type, with the maximum IOPS ratio for the size of volume.
#. Decide on what IP address the backend virtual IP (VIP) will be. It must reside in the same network segment as the backend machines. It will be specified in the |chef server rb| file; during installation, the high-availability plugin will automatically assign the VIP to the |amazon eni| for the primary instance.
#. Create an |amazon iam| user with at least the permissions documented in the reference section. Record this user's access and secret keys; these will be used in the |chef server rb| configuration file.



Primary Backend
=====================================================
placeholder

#. Download the packages from http://downloads.getchef.com/chef-server/.

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

#. Run the following command to configure |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will configure |drbd|. The installer will pause and ask for confirmation that |drbd| has been set up. Confirm (``CTRL-C``), and then run the following commands:

   .. code-block:: bash
      
      $ drbdadm create-md pc0

   then:

   .. code-block:: bash
      
      $ drbdadm up pc0





Secondary Backend
=====================================================
placeholder

Verify Failover
=====================================================
placeholder

Frontend Installation
=====================================================
placeholder



Reference
=====================================================
placeholder

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

