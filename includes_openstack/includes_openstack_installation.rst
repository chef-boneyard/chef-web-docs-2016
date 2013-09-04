.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. warning:: DRAFT

Having reviewed the :doc:`Architecture </openstack_architecture>` and :doc:`Deployment Prerequisites </openstack_deployment>`, you should be ready to install :doc:`Chef for OpenStack </openstack>`.

Current Projects and Components
-------------------------------
There are a number of configuration options available, here are technologies that are in use with these cookbooks.

.. list-table::
   :widths: 150 450
   :header-rows: 0

   * - Block Storage
     - LVM
   * - Hypervisors (Compute)
     - KVM, LXC
   * - Databases
     - MySQL
   * - Messaging
     - RabbitMQ
   * - Network
     - nova-network
   * - Object Storage
     - Swift
   * - :doc:`Operating Systems </openstack_deployment_os>`
     - Ubuntu 12.04
   * - Source builds
     - Omnibus

.. include:: ../../includes_openstack/includes_openstack_example_deployment.rst

Installation
------------

Make sure you’ve read and understand the prerequisites for installation.
Check out the OpenStack Chef Repository from GitHub.
Follow the Librarian Chef instructions to download all of the appropriate cookbooks.
Edit your environment that you will be using.
Upload all the roles, environments, cookbooks and data bags as necessary (Spiceweasel).
On the appropriate nodes, apply the proper roles to deploy.
Converge the nodes, controller first, then compute.
Log in to the Horizon Dashboard and either install or download your private key.
Create a test node.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Deployment
     - Description
   * - Vagrant
     - Test the All-in-One deployment on Vagrant
   * - Single Node
     - Deploy the All-in-One deployment on a physical machine
   * - Vagabond
     - Test 1+N deployment on Vagabond
   * - Multi-node
     - Deploy 1+N deployment on Vagabond
