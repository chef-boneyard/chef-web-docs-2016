.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Tiered Installation
The tiered installation allows you to install |chef private| on multiple servers, in order to scale portions of the service horizontally. It does not provide High Availability of the back-end data services, but instead relies on the ability to quickly restore the state of the server from a backup or from source code control. |opscode| generally recommends a High Availability installation rather than a tiered installation, if possible.

We refer to all the servers in a particular installation of |chef private| as a cluster.

The tiered installation consists of multiple front-end servers talking to a single back-end server. This allows for a higher level of concurrency on API requests, while scaling the back-end server vertically to handle the increased I/O load.

System Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++

* 8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 16GB RAM
* 2 x 300GB SAS RAID1 drives
* Hardware RAID card
* 1 GigE NIC interface
* 20 GB of free disk space in /opt
* 40 GB of free disk space in /var

.. note:: While you can certainly run |chef private| on smaller systems, our assumption with the Tiered and High Availability installations are that they are intended for production use. The above configuration is rated at 1,500 nodes converging every 5 minutes.

Nominate one of your servers to be the back-end, while the other systems will be front-end servers.

Network Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|chef private| has the following network requirements for a tiered installation:

Load Balancing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
As you are running multiple API front-ends, you will need to provide a mechanism for load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced VIP, which you will use to access the cluster---this is the ``api_fqdn``.

Firewalls
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
If you are using host-based firewalls (iptables, ufw, etc.) you will want to ensure that the following ports are open on each of the front-end servers:

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
   * - 9671
     - nginx
   * - 9680
     - nginx
   * - 9685
     - nginx
   * - 9683
     - nginx
   * - 9672
     - nrpe
   * - 5984
     - couchdb
   * - 8983
     - opscode-solr
   * - 5432
     - postgresql
   * - 5672
     - rabbitmq
   * - 6379
     - redis


Refer to your operating systems manual, or your site systems administrators for instructions on how to enable this change.

Create the private-chef.rb file
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Each private chef cluster has a single configuration file, which describes the topology of the entire cluster. This file lives in ``/etc/opscode/private-chef.rb`` on each server. In the text editor of your choice, create a file called ``private-chef.rb`` now.

Set the topology
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Add the following line to your configuration file:

Set the topology in private-chef.rb

.. code-block:: ruby

   topology "tier"

This lets private chef know that these servers will be in a horizontally scalable configuration with a single, non-highly-available back-end.

Add a server entry for the back-end
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For the server you will be using as the back-end, add the following:

Create the back-end server entry in private-chef.rb

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true

Replace ``FQDN`` with the fully-qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``backend``, and you will be using this server to bootstrap this |chef private| installation.

Additionally, you will be using this server exclusively for the back-end services. Let private chef know by adding the following entry:

Create the back-end VIP entry in private-chef.rb

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS"

Replace ``FQDN`` with the fully-qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server.

Add server entries for the front-end
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For each front-end server, add the following:

Create entries for each front-end server in private-chef.rb

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "frontend"

Replace ``FQDN`` with the fully qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``frontend``.

Set the api_fqdn
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Add the following line to your config file:

Set the api_fqdn in private-chef.rb

.. code-block:: ruby

   api_fqdn "FQDN"

Replace ``FQDN`` with the fully-qualified domain name of the load balanced VIP.

private-chef.rb example
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A completed private-chef.rb configuration file for a four server tiered private chef cluster, consisting of:

FQDN	IP Address	Role
be1.example.com	192.168.4.1	backend
fe1.example.com	192.168.4.2	frontend
fe2.example.com	192.168.4.3	frontend
fe3.example.com	192.168.4.4	frontend
chef.example.com	192.168.4.5	load balanced VIP
Looks like this:

Tiered private-chef.rb:

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


Place the package on the servers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Upload the package provided to the servers you wish to install on, and record its location on the file-system. The rest of this section will assume you uploaded it to the /tmp directory on each system.

Put private-chef.rb on the bootstrap server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Copy your private-chef.rb file to ``/etc/opscode/private-chef.rb`` on the bootstrap server.

Install |chef private| on the bootstrap server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Install the |chef private| package on |redhat| and |centos| 6:

.. code-block:: bash

   $ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

Install |chef private| package on |ubuntu|:

.. code-block:: bash

   $ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb

Configure the bootstrap server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To set up |chef private| on your bootstrap server, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the |chef| run that is configuring your new |chef private| installation. When it is complete, you will see:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef private| is composed of many different services, which work together to create a functioning system. One impact of this is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several ruby processes while the system is starting up. When that utilization drops off, the system is ready.

Copy /etc/opscode to the front-end servers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
With the bootstrap complete, you can now populate ``/etc/opscode`` on the front-end servers with the files generated during the bootstrap process. Assuming you are logged in as root on your bootstrap server, something like:

.. code-block:: bash

   $ scp -r /etc/opscode FQDN:/etc

Will copy all the files from the bootstrap server to another system. Replace FQDN with the fully qualified domain name of the system you want to install.

Install the package on front-end servers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Install the |chef private| package on each of the front-end servers for on |redhat| and |centos| 6

.. code-block:: bash

   $ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

Install the |chef private| package on |ubuntu|

.. code-block:: bash

   $ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb

Configure |chef private| on front-end servers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To set up |chef private| on your front-end servers, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the |chef| run that is configuring your new |chef private| installation. When it is complete, you will see:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef private| is composed of many different services, which work together to create a functioning system. One impact of this is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several ruby processes while the system is starting up. When that utilization drops off, the system is ready.

Success!
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Congratulations, you have installed |chef private| in a tiered configuration. You should now continue with the User Management section of this guide.


