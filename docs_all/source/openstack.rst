=====================================================
|chef openstack|
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_openstack/includes_openstack.rst

This page describes how to use the |chef openstack| cookbooks as the basis for managing an |openstack| deployment with |chef|, as well as how to participate in the development and maintenance process of these cookbooks. For more information about |openstack| itself, see http://docs.openstack.org.


Architecture
=====================================================
.. include:: ../../includes_openstack/includes_openstack_architecture.rst

All-in-One
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_architecture_allinone.rst

1 Controller, N Compute
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_architecture_1+n.rst


Deployment Prerequisites
=====================================================
.. include:: ../../includes_openstack/includes_openstack_deploy.rst

|chef|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deploy_prereq_chef.rst

Hardware
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deploy_prereq_hardware.rst

Network
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deploy_prereq_network.rst

Operating Systems
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deploy_prereq_os.rst

Images
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deploy_prereq_images.rst


Development
=====================================================
.. include:: ../../includes_openstack/includes_openstack_develop.rst

|irc|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_develop_irc.rst

|google|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_develop_google.rst

Issue Tracking
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_develop_issues.rst

Feature Tracking
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_develop_features.rst


Repository
=====================================================
.. include:: ../../includes_openstack/includes_openstack_repo.rst

|berkshelf|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_repo_berkshelf.rst

|spiceweasel|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_repo_spiceweasel.rst

Cookbooks
=====================================================
.. include:: ../../includes_openstack/includes_openstack_cookbooks.rst

The canonical upstream Chef cookbooks and example repository are located in the `Stackforge Github organization <https://github.com/stackforge/>`_. Each integrated OpenStack project has a separate cookbook and repository.

|openstack| Cookbooks
-----------------------------------------------------
The following table lists all of the cookbooks that are available for |chef openstack|:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - block-storage
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_block_storage.rst
   * - common
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_common.rst
   * - compute
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_compute.rst
   * - dashboard
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_dashboard.rst
   * - identity
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_identity.rst
   * - image
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_image.rst
   * - metering
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_metering.rst
   * - network
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_network.rst
   * - object-storage
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_object_storage.rst
   * - ops-database
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_database.rst
   * - ops-messaging
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_messaging.rst

.. note:: All |openstack| cookbooks are prefaced with ``cookbook-openstack-`` in addition to the name listed in the previous table. For example: ``cookbook-openstack-block-storage`` or ``cookbook-openstack-ops-messaging``.

Contribute
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute.rst

Commit Messages
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute_commit_messages.rst

Code Review
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute_code_review.rst

Test Cookbooks
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_cookbooks_test.rst



Install
=====================================================
.. include:: ../../includes_openstack/includes_openstack_install.rst


knife-openstack
=====================================================
See http://docs.opscode.com/plugin_knife_openstack.html.



Example Deployment
=====================================================

This is a small lab for testing the configuration and deployment of |chef openstack|. While the hardware is quite modest, the configuration should provide a useful reference implementation.

lab-repo
-----------------------------------------------------
Everything in the lab is managed by |chef| from the http://github.com/mattray/lab-repo repository. The operating systems for the machines are provisioned by the `pxe_dust <http://ckbk.it/pxe_dust>`_ cookbook, which uses a preseed file to put a minimal operating system in place via PXE. These machines are frequently re-installed and the process takes about 10 minutes.

Environment
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The `lab Environment <https://github.com/mattray/lab-repo/blob/master/environments/lab.rb>`_  provides overridden attributes. 

* The ``apt`` attributes are for restricting search to the lab. 
* The ``pxe_dust`` attribute is to lock down the |chef client| version. 
* The ``authorization`` attributes are for configuring |sudo| to not require a password, include the sudoers.d directory and add the 'mray' user to sudoers.

Roles
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This example uses two roles: ``lab-admin`` and ``lab-base``.

lab-admin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This role is for the admin node that provides PXE-booting and apt repository proxying.

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
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
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
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This example uses two data bags: ``pxe_dust`` and ``users``.

pxe_dust
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The `pxe_dust <http://ckbk.it/pxe_dust>`_ cookbook uses a ``pxe_dust`` data bag to track which operating systems to install and what configuration options are used. Because the machines in the lab are quite diverse, there are individidual data bag items for machines that have unique configurations (ie. 32-bit vs. 64-bit or boot eth1 vs. eth0).

users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The `users <http://ckbk.it/users>`_ cookbook uses a ``users`` data bag to create the users on the systems and install their SSH credentials.

Cookbooks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
All of the cookbook dependencies are managed by a `Berkshelf Berksfile <http://berkshelf.com>`_, usually kept quite up-to-date for the latest cookbook releases.

There is an additional `labsetup cookbook <https://github.com/mattray/lab-repo/blob/master/cookbooks/labsetup/recipes/default.rb>`_ that ensures the network cards are all using DHCP and the network is properly bridged.

Network
-----------------------------------------------------
There are 3 separate 1 gigabit networks.

Public 10.0.0.0/24
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This network is bridged to the Internet by a DD-WRT router providing DHCP. The router directs ``dhcp-boot`` requests to ``mom.lab.atx`` (10.0.0.2) for PXE-booting.

Private 10.1.0.0/24
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This is the network the various OpenStack services connect to each other. DHCP is provided by another DD-WRT router.

Storage 10.2.0.0/24
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This is intended for Storage services connect to each other (Swift or Ceph). DHCP is provided by yet another DD-WRT router. It is currently turned off.

Hardware
-----------------------------------------------------
There are currently 6 machines in this lab environment.

mom.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This is a utility server providing PXE OS installation, apt-cacher-ng proxying and mirroring of Chef installers and other files. It is an old IBM T43 ThinkPad with 2 GB of RAM and a 60 GB hard drive. It has the `lab-admin` role applied and is running Debian 7.1.

crushinator.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The primary box used for single-machine testing, it is a Shuttle SH55 with an Intel i7 processor, 16 GB of RAM and a 40 GB SSD. An additional gigabit ethernet card and another gigabit USB ethernet have been added.

ignar.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This machine is a Lenovo H405 IdeaCentres upgraded with a 40 GB SSD, 8 GB RAM and an additional gigabit ethernet card. Typically they are used as the Compute nodes.

larry.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This machine is identical to ignar.lab.atx.

lrrr.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This machine is a white box with only 2 gigs of RAM and an Intel Core 2 that is supposed to support VT extensions, but kernel panics when VMs are launched. It has been loaded with a 40 GB SSD boot volume and 4 additional hard drives to be used when testing storage configurations. An additional gigabit ethernet card and another gigabit USB ethernet have been added.

boxy.lab.atx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This is an elderly Shuttle SN95G5 with 2G RAM and an AMD Athlon 64 3500+ CPU. It has a 40 GB SSD boot volume and 2 additional hard drives. An additional gigabit ethernet card and another gigabit USB ethernet have been added.






For More Information ...
=====================================================
We are a community of developers, deployers and integrators who make working with |openstack| consistent and automated. Join us!

.. list-table::
   :widths: 150 450
   :header-rows: 0

   * - |irc|
     - ``#openstack-chef`` is our channel on ``irc.freenode.net``. Many useful conversations and debugging sessions happen there. Archives are available at `community.opscode.com/chat/openstack-chef <http://community.opscode.com/chat/openstack-chef>`_
   * - Mailing List
     - `groups.google.com/group/opscode-chef-openstack <http://groups.google.com/group/opscode-chef-openstack>`_ is the mailing list. Traffic is typically a few posts a day, a great place for updates and longer discussions
   * - |chef openstack| Wiki
     - `wiki.openstack.org <https://wiki.openstack.org/wiki/Chef/GettingStarted>`_ most of this information is migrated here
   * - |twitter|
     - `@chefopenstack <http://twitter.com/chefopenstack>`_

If you have questions or concerns outside the mailing list, please email matt@opscode.com.
