=====================================================
|chef openstack|: Example Deployment
=====================================================

This is a small lab for testing the configuration and deployment of |chef openstack|. While the hardware is quite modest, the configuration should provide a useful reference implementation.

.. image:: ../../images/openstack-lab.png

lab-repo
=====================================================
Everything in the lab is managed by |chef| from the http://github.com/mattray/lab-repo repository. The operating systems for the machines are provisioned by the `pxe_dust <http://ckbk.it/pxe_dust>`_ cookbook, which uses a preseed file to put a minimal operating system in place via PXE. These machines are frequently re-installed and the process takes about 10 minutes.

Environment
-----------------------------------------------------
The `lab Environment <https://github.com/mattray/lab-repo/blob/master/environments/lab.rb>`_  provides overridden attributes.

* The ``apt`` attributes are for restricting search to the lab.
* The ``authorization`` attributes are for configuring |sudo cmd| to not require a password, include the sudoers.d directory and add the 'mray' user to sudoers.
* The ``dnsmasq`` attributes are for configuring DHCP, DNS and TFTP on the private 'admin' network.
* The ``pxe_dust`` attribute is to lock down the |chef client| version.

Roles
-----------------------------------------------------
This example uses two roles: ``lab-admin`` and ``lab-base``.

lab-admin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This role is for the admin node that provides DHCP, DNS, TFTP, PXE-booting and apt repository proxying.

.. code-block:: ruby

   name "lab-admin"
   description "Default run_list for the Admin node"
   run_list(
     "recipe[apt::cacher-ng]",
     "recipe[apt::cacher-client]",
     "recipe[ntp]",
     "recipe[openssh]",
     "recipe[users::sysadmins]",
     "recipe[sudo]",
     "recipe[chef-client]",
     "recipe[pxe_dust::server]"
     )

lab-base
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The base role ensures that the apt repository proxy is used, NTP and SSH are configured and the sysadmins in the users data bag are all installed. After this role is applied, the machines are available for whatever purpose they are needed.

.. code-block:: ruby

   name "lab-base"
   description "Default run_list for lab machines"
   run_list(
     "recipe[apt::cacher-client]",
     "recipe[ntp]",
     "recipe[openssh]",
     "recipe[users::sysadmins]",
     "recipe[sudo]",
     "recipe[chef-client::delete_validation]"
     )

Data Bags
-----------------------------------------------------
This example uses two data bags: ``pxe_dust`` and ``users``.

pxe_dust
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The `pxe_dust <http://ckbk.it/pxe_dust>`_ cookbook uses a ``pxe_dust`` data bag to track which operating systems to install and what configuration options are used. Because the machines in the lab are quite diverse, there are individidual data bag items for machines that have unique configurations (ie. 32-bit vs. 64-bit or boot eth1 vs. eth0).

users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The `users <http://ckbk.it/users>`_ cookbook uses a ``users`` data bag to create the users on the systems and install their SSH credentials.

Cookbooks
-----------------------------------------------------
All of the cookbook dependencies are managed by a `Berkshelf Berksfile <http://berkshelf.com>`_, usually kept quite up-to-date for the latest cookbook releases.

Network
=====================================================
There are 3 separate 1 gigabit networks.

Admin 10.0.0.0/24
-----------------------------------------------------
This network is used by the various OpenStack services and for PXE-booting. DHCP is provided by the ``lab-admin`` node. Nodes connect to it via eth0.

Public 172.16.100.0/24
-----------------------------------------------------
This network is bridged to the Internet by a router providing DHCP. Nodes connect to it via eth1.

Storage 192.160.0.0/24
-----------------------------------------------------
This is intended for storage services to connect to each other (Swift or Ceph). DHCP is provided by a DD-WRT router. It is currently unused.

Hardware
=====================================================
There are currently 5 machines in this lab environment.

mom.lab.atx
-----------------------------------------------------
This is a utility server providing the services in the ``lab-admin`` role: DHCP, DNS, TFTP, apt-cacher-ng proxying and mirroring of Chef installers and other files. It is an old IBM T43 ThinkPad with 2 GB of RAM and a 60 GB hard drive. It is currently running Debian 7.1.

crushinator.lab.atx
-----------------------------------------------------
The primary box used for single-machine testing, it is a Shuttle SH55 with an Intel i7 processor, 16 GB of RAM, a 40 GB SSD and 500 GB hard drive. An additional gigabit ethernet card and another gigabit USB ethernet have been added.

ignar.lab.atx/larry.lab.atx
-----------------------------------------------------
These machines are Lenovo H405 IdeaCentres upgraded with a 40 GB SSD, 500 GB hard drives, 8 GB RAM, an additional gigabit ethernet card and a gigabit USB ethernet. Typically they are used as the Compute nodes.

lrrr.lab.atx
-----------------------------------------------------
This machine is a white box with only 2 gigs of RAM and an Intel Core 2 that is supposed to support VT extensions, but kernel panics when VMs are launched. It has been loaded with a 40 GB SSD boot volume and 5 additional hard drives to be used when testing storage configurations. An additional 2 gigabit ethernet cards have been added.


