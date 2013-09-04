.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**All-in-One** configurations are appropriate for small scale environments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine (see the :doc:`Vagrant example </openstack_installation_vagrant>`). This machine need not be large, but sufficient to launch a few virtual instances assuming it is for testing purposes. This is a good way to familiarize yourself with the basics of **Chef for OpenStack**.

OpenStack Projects
------------------
**Includes:**

* Compute
* Dashboard
* Identity
* Image
* Network

The database and messaging service run on the node as well.

**Excluded:**

* Block Storage
* Object Storage
* Metering
* Orchestration

Environment
-----------

Networking
----------

Run List
-----------

.. toctree::
   :hidden:

   openstack_deployment_vagrant
