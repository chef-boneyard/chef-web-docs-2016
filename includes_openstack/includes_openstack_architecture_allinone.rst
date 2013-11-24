.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**All-in-One Compute** configurations are appropriate for small scale deployments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine. This machine need not be large, but it must be sufficient to launch a few virtual instances, assuming those instances are only used for testing purposes. This configuration is a good way to familiarize yourself with the basics of |chef openstack|.

The All-in-One Compute configuration may be used for testing with :doc:`Vagrant </openstack_vagrant>`

* **On the Controller** Compute, Dashboard, Identity, Image, and Network. The database and messaging services also run on the node.
* **Excluded** Block Storage, Object Storage, Metering, and Orchestration

Environments
------------

The :doc:`Vagrant </openstack_vagrant>` configuration uses its own ``vagrant`` environment.

There is an ``allinone`` example Environment that is currently under development and will be documented here soon.

Roles
-----

There is an ``allinone-compute`` role in the :doc:`OpenStack Chef Repository </openstack_repository>`. This will deploy all of the services for Openstack Compute to function on a single box. The run list is the ``os-compute-single-controller`` and ``os-compute-worker`` roles.
