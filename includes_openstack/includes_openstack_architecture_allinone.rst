.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**All-in-One** configurations are appropriate for small scale environments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine. This machine need not be large, but it must be sufficient to launch a few virtual instances, assuming those instances are only used for testing purposes. This configuration is a good way to familiarize yourself with the basics of |chef openstack|.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Location
     - Description
   * - On the Controller
     - Compute, Dashboard, Identity, Image, and Network. The database and messaging services also run on the node.
   * - Excluded
     - Block Storage, Object Storage, Metering, and Orchestration

.. 
.. The following is commented out until there is content, after which they will probably be broken down into unique topics.
.. 
.. Environment
.. -----------
.. 
.. Networking
.. ----------
.. 
.. Run List
.. -----------
.. 