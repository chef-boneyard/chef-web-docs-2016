.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **1+N** configuration refers to a single 'Controller' and N 'Compute' nodes. This is suitable for relatively small (<20 nodes) deployments depending on the nature of the workload. Compute nodes should typically be given more substantial hardware than the Controller node.

OpenStack Projects
------------------
**Included on the 'Controller':**

* Compute (services, not the hypervisor)
* Dashboard
* Identity
* Image
* Network

The database and messaging service run on the 'Controller' as well.

**Included on the 'Compute' nodes:**

* Compute (hypervisor)

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

