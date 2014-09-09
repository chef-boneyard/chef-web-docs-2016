=====================================================
Scaled Front End
=====================================================

The scaled front end installation allows you to install the |chef server| on multiple servers, in order to scale portions of the service horizontally. It does not provide high availability for the back-end data services, but instead relies on the ability to quickly restore the state of the server from a backup or from source code control. |company_name| generally recommends a High Availability installation rather than a scaled front end installation, whenever possible.

We refer to all the servers in a particular installation of the |chef server| as a cluster.

The scaled front end installation consists of multiple front-end servers talking to a single back-end server. This allows for a higher level of concurrency on API requests, while scaling the back-end server vertically to handle the increased I/O load.

System Requirements
=====================================================
A scaled front end installation scenario has the following system requirements:

* 8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 16GB RAM
* 2 x 300GB SAS RAID1 drives
* Hardware RAID card
* 1 GigE NIC interface
* 20 GB of free disk space in ``/opt``
* 40 GB of free disk space in ``/var``
* A back-end server; all other systems will be front-end servers.

.. note:: While you can certainly run the |chef server| on smaller systems, our assumption with the scaled front end installation is that it is intended for production use. The above configuration is rated at 1,500 nodes converging every 5 minutes.

Network Requirements
=====================================================
|chef server| has the following network requirements for a scaled front end installation:

Load Balancing
-----------------------------------------------------
As multiple API front-end servers are being run, provide for a mechanism to load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced virtual IP address, which is used to access the cluster---this is the ``api_fqdn``.

Firewalls
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports.rst

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_fe.rst

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_be.rst

|chef server rb|
-----------------------------------------------------
Each |chef server| cluster has a single configuration file called |chef server rb|. This file describes the topology of the entire cluster. This file lives in ``/etc/opscode/chef-server.rb`` on each server. Using the text editor of your choice, create a file called |chef server rb|.

Configure topology
-----------------------------------------------------
Add the following line to the |chef server rb| configuration file:

.. code-block:: ruby

   topology "tier"

This lets the |chef server| know that these servers will be in a horizontally scalable configuration with a single, non-highly-available back-end.

Back-end entries
-----------------------------------------------------
For the server that will be used as a back-end servers, add the following to the |chef server rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``backend``, and you will be using this server to bootstrap the |chef server| installation.

Additionally, this server is used exclusively for the back-end services. Let the |chef server| know by adding the following entry to |chef server rb|:

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS"

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server.

Front-end entries
-----------------------------------------------------
For each front-end server, add the following to the |chef server rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "frontend"

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``frontend``.

Set api_fqdn
-----------------------------------------------------
Add the following line to the |chef server rb| config file:

.. code-block:: ruby

   api_fqdn "FQDN"

Replace ``FQDN`` with the |fqdn| of the load balanced VIP.

Example
-----------------------------------------------------
A completed |chef server rb| configuration file for a four server |chef server| cluster, consisting of:

.. list-table::
   :widths: 100 150 150
   :header-rows: 1

   * - FQDN
     - Real IP Address
     - Role
   * - be1.example.com
     - 192.168.4.1
     - backend
   * - fe1.example.com
     - 192.168.4.2
     - frontend
   * - fe2.example.com
     - 192.168.4.3
     - frontend
   * - fe3.example.com
     - 192.168.4.4
     - frontend
   * - chef.example.com
     - 192.168.4.5
     - load balanced frontend VIP

Looks like this:

.. code-block:: ruby

   topology "tier"
   
   server "be1.example.com",
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true
   
   backend_vip "be1.example.com",
     :ipaddress => "192.168.4.1"
   
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


Add Package to Servers
=====================================================
Upload the package provided to the servers you wish to install on, and record its location on the file-system. The rest of this section will assume you uploaded it to the ``/tmp`` directory on each system.

Configure Bootstrap
=====================================================
The following sections describe what is required to configure the bootstrap server.

Add |chef server rb|
-----------------------------------------------------
Copy the |chef server rb| file to ``/etc/opscode/chef-server.rb`` on the bootstrap server.

Install the |chef server|
-----------------------------------------------------
On the bootstrap server copy the |chef server rb| file to ``/etc/opscode/chef-server.rb``.

Configure 
-----------------------------------------------------
To set up the |chef server| on your bootstrap server, run:

.. code-block:: bash

   $ chef-server-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the |chef| run that is configuring the |chef server| installation. When it is complete, you will see:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef server| is composed of many different services, which work together to create a functioning system. One effect is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several |ruby| processes while the system is starting up. When that utilization drops off, the system is ready.

Configure Front-end
=====================================================
The following sections describe what is required to configure the front-end server.

Copy /etc/opscode
-----------------------------------------------------
With the bootstrap complete, you can now populate ``/etc/opscode`` on the front-end servers with the files generated during the bootstrap process. Assuming you are logged in as root on your bootstrap server, something like:

.. code-block:: bash

   $ scp -r /etc/opscode FQDN:/etc

Will copy all the files from the bootstrap server to another system. Replace ``FQDN`` with the |fqdn| of the system you want to install.

Install package
-----------------------------------------------------
Install the |chef server| package on each of the front-end servers. For on |redhat| and |centos| 6:

.. code-block:: bash

   $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

Install the |chef server| package on |ubuntu|:

.. code-block:: bash

   $ dpkg -i /tmp/chef-server-core-<version>.deb


Configure
-----------------------------------------------------
With the bootstrap complete, you can now populate ``/etc/opscode`` on the front-end servers with the files generated during the bootstrap process. Assuming you are logged in as root on your bootstrap server, something like:

.. code-block:: bash

   $ scp -r /etc/opscode FQDN:/etc

This command will copy all the files from the bootstrap server to another system. Replace ``FQDN`` with the |fqdn| of the system you want to install.

Reconfigure the Server
-----------------------------------------------------
Run the following command:

.. code-block:: bash

   $ chef-server-ctl reconfigure

Success!
=====================================================
Congratulations, you have installed the |chef server| in a scaled front end configuration. Continue with the User Management section of this guide.

