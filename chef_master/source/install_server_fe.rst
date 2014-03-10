=====================================================
Scaled Front End
=====================================================

The scaled front end installation allows you to install |chef server oec| on multiple servers, in order to scale portions of the service horizontally. It does not provide high availability for the back-end data services, but instead relies on the ability to quickly restore the state of the server from a backup or from source code control. |company_name| generally recommends a High Availability installation rather than a scaled front end installation, whenever possible.

We refer to all the servers in a particular installation of |chef server oec| as a cluster.

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

.. note:: While you can certainly run |chef server oec| on smaller systems, our assumption with the scaled front end installation is that it is intended for production use. The above configuration is rated at 1,500 nodes converging every 5 minutes.

Network Requirements
=====================================================
|chef server oec| has the following network requirements for a scaled front end installation:

Load Balancing
-----------------------------------------------------
As multiple API front-end servers are being run, provide for a mechanism to load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced virtual IP address, which is used to access the cluster---this is the ``api_fqdn``.

Firewalls
-----------------------------------------------------
If host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open on each of the front-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 9672
     - nrpe

On the back-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 4321
     - bookshelf
   * - 4369
     - opscode-org-creator
   * - 5140
     - opscode-certificate
   * - 5432
     - postgresql
   * - 5672
     - rabbitmq
   * - 5984
     - couchdb
   * - 6379
     - redis
   * - 7788
     - drbd
   * - 8000
     - opscode-erchef
   * - 8983
     - opscode-solr
   * - 9000
     - nagios
   * - 9460
     - opscode-chef
   * - 9462
     - opscode-webui
   * - 9463
     - opscode-authz
   * - 9465
     - opscode-account
   * - 9466
     - estatsd
   * - 9670
     - nagios
   * - 9671
     - nagios
   * - 9672
     - nrpe
   * - 9671
     - nginx
   * - 9680
     - nginx
   * - 9683
     - nginx
   * - 9685
     - nginx

Refer to the operating systems manual or a site systems administrators for instructions on how to enable this change.

private-chef.rb
-----------------------------------------------------
Each |chef server oec| cluster has a single configuration file called |private chef rb|. This file describes the topology of the entire cluster. This file lives in ``/etc/opscode/private-chef.rb`` on each server. Using the text editor of your choice, create a file called |private chef rb|.

Configure topology
-----------------------------------------------------
Add the following line to the |private chef rb| configuration file:

.. code-block:: ruby

   topology "tier"

This lets |chef server oec| know that these servers will be in a horizontally scalable configuration with a single, non-highly-available back-end.

Back-end entries
-----------------------------------------------------
For the server that will be used as a back-end servers, add the following to the |private chef rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``backend``, and you will be using this server to bootstrap this |chef server oec| installation.

Additionally, this server is used exclusively for the back-end services. Let |chef server oec| know by adding the following entry to ``private-chef.rb``:

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS"

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server.

Front-end entries
-----------------------------------------------------
For each front-end server, add the following to the |private chef rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "frontend"

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``frontend``.

Set api_fqdn
-----------------------------------------------------
Add the following line to the |private chef rb| config file:

.. code-block:: ruby

   api_fqdn "FQDN"

Replace ``FQDN`` with the |fqdn| of the load balanced VIP.

Example
-----------------------------------------------------
A completed |private chef rb| configuration file for a four server |chef server oec| cluster, consisting of:

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
     - backend VIP

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

Add private-chef.rb
-----------------------------------------------------
Copy the |private chef rb| file to ``/etc/opscode/private-chef.rb`` on the bootstrap server.

Install |chef server oec|
-----------------------------------------------------
On the bootstrap server copy the |private chef rb| file to ``/etc/opscode/private-chef.rb``.

Configure 
-----------------------------------------------------
To set up |chef server oec| on your bootstrap server, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the |chef| run that is configuring your new |chef server oec| installation. When it is complete, you will see:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef server oec| is composed of many different services, which work together to create a functioning system. One effect is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several |ruby| processes while the system is starting up. When that utilization drops off, the system is ready.

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
Install the |chef server oec| package on each of the front-end servers. For on |redhat| and |centos| 6:

.. code-block:: bash

   $ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

Install the |chef server oec| package on |ubuntu|:

.. code-block:: bash

   $ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb


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

   $ private-chef-ctl reconfigure

Success!
=====================================================
Congratulations, you have installed |chef server oec| in a scaled front end configuration. Continue with the User Management section of this guide.

