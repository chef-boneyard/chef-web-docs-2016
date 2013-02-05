.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

High Availability Installation
The high availability installation allows you to install Private Chef on multiple servers, in order to scale portions of the service horizontally, with a highly available back-end infrastructure. This is our recommended configuration for production utilization of Private Chef.

We refer to all the servers in a particular installation of Private Chef as a “cluster”.

Overview
The high availability installation consists of multiple front-end servers talking to a pair of clustered back-end servers. This allows for a higher level of concurrency on API requests, while scaling the back-end servers vertically to handle the increased I/O load.

System Requirements
8 total cores 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
16GB RAM
2 x 300GB SAS RAID1 drives
Hardware RAID card
1 x GigE NIC interface
20 GB of free disk space in /opt
40 GB of free disk space in /var
Note
While you can certainly run private chef on smaller systems, our assumption with the Tiered and High Availability installations are that they are intended for production use. The above configuration is rated at 1,500 nodes converging every 5 minutes.
This architecture consists of two “back-end” servers, with as many “front-end” servers as you desire.

Network Requirements
Back-End Networking
The back-end servers utilize DRBD, a distributed block device, to ensure that data written to disk on one back-end server is efficiently replicated to another. For optimal performance and reliability, we recommend that:

Your back-end servers have a 100M+ ethernet interface cross-connected to the other, for the cluster keepalive signal.
Your back-end servers have a 10G+ ethernet interface cross-connected to the other, for DRBD data replication.
This is in addition to the standard network interfaces on your systems. While DRBD replication can function on systems without these additional network interfaces, this configuration gives maximum performance and reliability.

Back-End Virtual IP Address
The back-end servers will share a Virtual IP Address (which we will refer to later as the back-end VIP), which needs to be accessible from the front-end servers. This VIP will be created and managed by Private Chef but will need be added to DNS to access the cluster.

Back-End disk configuration
We recommend that you have disks entirely dedicated to storing the data for your Private Chef installation, and they should be:

Utilizing Hardware RAID
Be configured in either RAID1 or RAID5
Be identical across both of your back-end servers
Our recommended configuration utilizes the Linux Logical Volume Manager (LVM) as the backing store for DRBD. Assuming:

You have 1TB of raw, unpartitioned disk space
It presents as a single device, /dev/sdb
The storage should be added to a volume group named opscode
And in a logical volume group named drbd
The volume group should have adequate space to enable LVM snapshots to be used for backups (at least 40GB)
The following commands would properly set up the back-end disk configuration for DRBD:

Setting up LVM for DRBD

$ pvcreate /dev/sdb
$ vgcreate opscode /dev/sdb
$ lvcreate -L 900G --name drbd opscode
Warning
Talk with your systems administrators about disk configuration if you are at all uncertain of how to configure a new logical volume with LVM, as the operations can be destructive.
Load Balancing
As you are running multiple API front-ends, you will need to provide a mechanism for load-balancing the requests between them. We recommend using either a hardware or software load-balancer configured for round-robin.

You will want to create a DNS entry for the load balanced VIP, which you will use to access the cluster - we will refer to this later as the api_fqdn.

Firewalls
If you are using host-based firewalls (iptables, ufw, etc.) you will want to ensure that the following ports are open on each of the front-end servers:

Port	Used by
80	nginx
443	nginx
9672	nrpe
On the back-end servers:

Port	Used by
80	nginx
443	nginx
9671	nginx
9680	nginx
9685	nginx
9683	nginx
9672	nrpe
5984	couchdb
8983	opscode-solr
5432	postgresql
5672	rabbitmq
6379	redis
7788	drbd
Refer to your operating systems manual, or your site systems administrators for instructions on how to enable this change.

Create your private-chef.rb configuration file
Each private chef cluster has a single configuration file, which describes the topology of the entire cluster. This file lives in /etc/opscode/private-chef.rb on each server. In the text editor of your choice, create a file called “private-chef.rb” now.

Set the topology
Add the following line to your configuration file:

Set the topology in private-chef.rb

topology "ha"
This lets private chef know that these servers will be in a horizontally scalable configuration with a highly-available back-end.

Add entries for the back-end servers
Nominate one of your back-end servers as the “bootstrap” server. For that server, add the following:

Create the back-end bootstrap server entry in private-chef.rb

server "FQDN",
  :ipaddress => "IPADDRESS",
  :role => "backend",
  :bootstrap => true,
  :cluster_ipaddress => "CLUSTER_IPADDRESS"
Replace FQDN with the fully-qualified domain name of the server, and IPADDRESS with the IP address of the server. The role is backend, and you will be using this server to bootstrap this private chef installation. Replace CLUSTER_IPADDRESS with the IP address of the interface to be used for cluster communications (such as keepalive and drbd replication). If no such interface is configured, exclude the cluster_ipaddress entry.

For the other back-end server, add the following:

Create the back-end server entry in private-chef.rb

server "FQDN",
 :ipaddress => "IPADDRESS",
 :role => "backend",
 :cluster_ipaddress => "CLUSTER_IPADDRESS"
Replace FQDN with the fully qualified domain name of the server, and IPADDRESS with the IP address of the server. Replace CLUSTER_IPADDRESS with the IP address of the server’s interface assigned for cluster communications. If no such interface is configured, exclude the cluster_ipaddress entry.

Add an entry for the back-end VIP that you assigned earlier:

Create the back-end VIP entry in private-chef.rb

backend_vip "FQDN",
 :ipaddress => "IPADDRESS",
 :device => "eth0",
 :heartbeat_device => "eth1"
Replace FQDN with the fully-qualified domain name of the server, and IPADDRESS with the IP address of the VIP. The :device parameter should be the ethernet interface that the floater VIP will bind to (ie. the public interface of the server). The :heartbeat_device parameter should be the ethernet interface that the cluster heartbeat goes over (ie. the interface of the cluster_ipaddress on the backend servers).

Add server entries for the front-end servers
For each front-end server, add the following:

Create entries for each front-end server in private-chef.rb

server "FQDN",
 :ipaddress => "IPADDRESS",
 :role => "frontend"
Replace FQDN with the fully qualified domain name of the server, and IPADDRESS with the IP address of the server. The role is frontend.

Set the api_fqdn to the fully qualified domain name for your load balanced VIP
Add the following line to your config file:

Set the api_fqdn in private-chef.rb

api_fqdn "FQDN"
Replace FQDN with the fully-qualified domain name of the load balanced VIP.

Completed private-chef.rb example
A completed private-chef.rb configuration file for a four server tiered private chef cluster, consisting of:

FQDN	IP Address	Cluster IP Address	Role
be1.example.com	192.168.4.1	10.1.2.10	backend
be2.example.com	192.168.4.6	10.1.2.12	backend
fe1.example.com	192.168.4.2	n/a	frontend
fe2.example.com	192.168.4.3	n/a	frontend
fe3.example.com	192.168.4.4	n/a	frontend
chef.example.com	192.168.4.5	n/a	load balanced VIP
be.example.com	192.168.4.7	n/a	back-end VIP
Looks like this:

Tiered private-chef.rb

topology "ha"

server "be1.example.com"
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
 :device => "eth0",
 :heartbeat_device => "eth1"

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
Place the Private Chef package on the servers
Upload the package provided to the servers you wish to install on, and record its location on the file-system. The rest of this section will assume you uploaded it to the /tmp directory on each system.

Place the private-chef.rb in /etc/opscode on the bootstrap server
Copy your private-chef.rb file to /etc/opscode/private-chef.rb on the bootstrap server.

Install the Private Chef package on the back-end servers
Install the Private Chef package on both of the back-end servers.

Install the Private Chef package on Red Hat and CentOS 6

$ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm
Install the Private Chef package on Ubuntu

$ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb
Install DRBD on both of the back-end servers
Both of the back-end servers must have DRBD installed.

Install DRBD on Red Hat and CentOS 6

$ rpm --import http://elrepo.org/RPM-GPG-KEY-elrepo.org
$ yum install -y http://elrepo.org/elrepo-release-6-4.el6.elrepo.noarch.rpm
$ yum install -y drbd84-utils kmod-drbd84
Note
The ELRepo provides updated drivers for the Enterprise Linux family of distributions (based on Red Hat Enterprise Linux.) With the introduction of Red Hat Enterprise 6, Red Hat no longer distributes DRBD within the kernel. These modules provide properly built, community tested releases of the required kernel and DRBD userland.
Install DRBD on Ubuntu

$ apt-get install drbd8-utils
Configure DRBD on the bootstrap back-end server
In an HA configuration, setup of Private Chef happens in two phases - the first phase configures DRBD, and then pauses to allow you to finish establishing DRBD replication before moving on.

Configure DRBD with private-chef-ctl

$ private-chef-ctl reconfigure
The installer will pause, asking you to confirm that you have set up DRBD. Press CTRL-C to exit, and continue the last few steps require to set up DRBD.

Finish DRBD setup

$ drbdadm create-md pc0
$ drbdadm up pc0
Copy configuration to the non-bootstrap back-end server
To configure DRBD on the non-bootstrap back-end server, you must first copy all the contents of /etc/opscode on the bootstrap node to the non-bootstrap back-end. On the non-bootstrap server:

Copy /etc/opscode from the bootstrap server

$ scp -r FQDN:/etc/opscode /etc
Replace FQDN above with the FQDN of your bootstrap server.

Configure DRBD on the non-bootstrap back-end server
Set up the configuration of DRBD on the non-bootstrap back-end server:

Configure DRBD with private-chef-ctl

$ private-chef-ctl reconfigure
The installer will pause, asking you to confirm that you have set up DRBD. Press CTRL-C to exit, and continue the last few steps require to set up DRBD.

Finish DRBD setup

$ drbdadm create-md pc0
$ drbdadm up pc0
Make the bootstrap server primary for DRBD
With both servers now configured for DRBD, let the cluster know that the bootstrap server should be primary for the shared device:

Make the bootstrap server primary for DRBD on Red Hat and CentOS 6

$ drbdadm primary --force pc0
Make the bootstrap server primary for DRBD on Ubuntu

$ drbdadm -- --overwrite-data-of-peer primary pc0
Create and mount the filesystem on the DRBD device
On the bootstrap server, assuming you are using ext4 as your filesystem:

Creating the filesystem for DRBD

$ mkfs.ext4 /dev/drbd0
$ mkdir -p /var/opt/opscode/drbd/data
$ mount /dev/drbd0 /var/opt/opscode/drbd/data
Monitor the initial device synchronization
Before proceeding with the installation, YOU MUST allow the DRBD devices to fully synchronize. To observe the synchronization process, you can run:

Observe DRBD synchronization status

$ watch -n1 cat /proc/drbd
You will see output similar to:

cat /proc/drbd output

version: 8.4.1 (api:1/proto:86[STRIKEOUT:100)
GIT-hash: 91b4c048c1a0e06777b5f65d312b38d47abaea80 build by
dag@Build64R6, 2011]12[STRIKEOUT:21 06:08:50
 0: cs:SyncSource ro:Primary/Secondary ds:UpToDate/Inconsistent C r]—-
 ns:3071368 nr:0 dw:0 dr:3075736 al:0 bm:187 lo:0 pe:13 ua:4 ap:0 ep:1
wo:b oos:12685660
 [==>……………..] sync’ed: 19.5% (12388/15372)M
 finish: 0:11:00 speed: 19,188 (24,468) K/sec
When the ds section of the output reads UpToDate/UpToDate, the synchronization is complete.

Under normal operation, DRBD dedicates only a portion of the available disk bandwidth to initial/complete re-synchronization - this is to ensure that new data that may be written to the shared device is also being synchronized. To enable DRBD to utilize more of the bandwidth available during the initial synchronization, you can run:

Speeding up initial synchronization on Red Hat and CentOS 6

$ drbdadm disk-options --resync-rate=1100M pc0
Speeding up initial synchronization on Ubuntu

$ drbdsetup /dev/drbd0 syncer -r 1100M
With synchronization complete, you are now ready to use DRBD on the bootstrap node - let Private Chef know by running:

Let private-chef-ctl know that you are ready to proceed

$ touch /var/opt/opscode/drbd/drbd_ready
Configure Private Chef on the bootstrap server
To continue setting up private chef on your bootstrap server, run:

Configure Private Chef

$ private-chef-ctl reconfigure
This command may take several minutes to run, during which you will see the output of the Chef run that is configuring your new Private Chef installation. When it is complete, you will see:

Completed private-chef-ctl reconfigure

Chef Server Reconfigured!
Note
Private Chef is composed of many different services, which work together to create a functioning system. One impact of this is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several ruby processes while the system is starting up. When that utilization drops off, the system is ready.
Configure Private Chef on the non-bootstrap back-end server
Warning
Make sure DRBD synchronization has completed, and that Private Chef has fully started on the bootstrap node before continuing!
Each member of your Private Chef back-end cluster participates in an election for who should be Primary for the DRBD device. This means that, if you do not allow the bootstrap node to finish initializing the system before setting up the non-bootstrap server, you may leave the system in an unstable state.
Let private-chef-ctl know that you are have configured DRBD:

Let private-chef-ctl know that you are ready to proceed

$ touch /var/opt/opscode/drbd/drbd_ready
Followed by:

Configure Private Chef

$ private-chef-ctl reconfigure
Copy the contents of /etc/opscode from the bootstrap server to the front-end servers
With the bootstrap complete, you can now populate /etc/opscode on the front-end servers with the files generated during the bootstrap process. Assuming you are logged in as root on your bootstrap server, something like:

Copy /etc/opscode to another server

$ scp -r /etc/opscode FQDN:/etc
Will copy all the files from the bootstrap server to another system. Replace FQDN with the fully qualified domain name of the system you want to install.

Install the Private Chef package on the front-end servers
Install the Private Chef package on each of the front-end servers.

Install the Private Chef package on Red Hat and CentOS 6

$ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm
Install the Private Chef package on Ubuntu

$ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb
Configure Private Chef on the front-end servers
To set up private chef on your front-end servers, run:

Configure Private Chef

$ private-chef-ctl reconfigure
This command may take several minutes to run, during which you will see the output of the Chef run that is configuring your new Private Chef installation. When it is complete, you will see:

Completed private-chef-ctl reconfigure

Chef Server Reconfigured!
Note
Private Chef is composed of many different services, which work together to create a functioning system. One impact of this is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several ruby processes while the system is starting up. When that utilization drops off, the system is ready.
Success!
Congratulations, you have installed Private Chef in a tiered configuration. You should now continue with the User Management section of this guide.

Using GRE Tunnels
Occassionaly, you may need to utilize a GRE tunnel to handle the VRRP traffic. To accomplish this, you will need to put the following in /var/opt/opscode/keepalived/bin/tunnel.sh.

On the backend server you are using for bootstrapping

#!/bin/sh
ip tunnel add pc mode gre remote VRRP_IP_OF_PEER local MY_IP ttl 25
ip link set pc up
ip addr add 172.18.16.1 dev pc
ip route add 172.18.16.0/24 dev pc
On the backend server you are not using for bootstrapping

#!/bin/sh
ip tunnel add pc mode gre remote VRRP_IP_OF_PEER local MY_IP ttl 25
ip link set pc up
ip addr add 172.18.16.2 dev pc
ip route add 172.18.16.0/24 dev pc
Replace VRRP_IP_OF_PEER with the IP address of the server on the other end of the tunnel, and MY_IP with the IP address of the server you are putting the script on.

The 172.17.16.0/24 network used in the above examples could be any un-used reserved IP address space.

Set the following in /etc/opscode/private-chef.rb:

backend_vip "192.168.141.108",
  :ipaddress => "192.168.141.108",
  :device => "eth0",
  :heartbeat_device => "pc"
And set the keepalived unicast addresses to the GRE tunnel addresses.


