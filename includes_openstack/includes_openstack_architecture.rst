.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This section describes the supported deployment scenarios for |chef openstack| and is based on the `OpenStack Grizzly <http://www.solinea.com/2013/06/15/openstack-grizzly-architecture-revisited/>`_ release.

.. image:: ../../images/openstack-arch-grizzly-conceptual-v2.jpg

There are a number of configuration options available, including block storage, hypervisors, databases, message queuing, networking, object storage, source builds, and so on. The current supported deployment scenarios include the following:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Scenario
     - Description
   * - :doc:`All-in-One Compute </openstack_architecture_allinone>`
     - A full |openstack compute| deployment on a single host or with :doc:`Vagrant </openstack_vagrant>`. No object storage.
   * - :doc:`Single Controller + N Compute </openstack_architecture_1+n>`
     - A single controller with 1 or more |openstack compute| nodes. No object storage.

.. note:: |chef openstack| is under very active development for the |openstack grizzly| release. |openstack| is flexible and additional configurations will be supported in the future.
