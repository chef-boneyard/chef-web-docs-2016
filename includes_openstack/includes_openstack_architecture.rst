.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This section will provide you with an overview of the currently supported deployment scenarios for |chef openstack|. You should already familiar with the projects for the OpenStack "Grizzly" release:

|grizzly|

source: http://www.solinea.com/2013/06/15/openstack-grizzly-architecture-revisited/

Current Grizzly Configurations
------------------------------

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Architecture
     - Description
   * - :doc:`All-in-One Compute </openstack_architecture_allinone>`
     - A full OpenStack Compute deployment on a single host. No Object Storage.
   * - :doc:`Single Controller + N Compute </openstack_architecture_1+n>`
     - A single Controller with 1 or more Nova Compute nodes. No Object Storage.

.. note::
  **Chef for OpenStack** is under very active development for the Grizzly release and more architectures are being supported.

OpenStack is very flexible, so additional configurations will continue to be supported in the future.

.. include:: ../../includes_openstack/includes_openstack_example_deployment.rst

.. toctree::
   :hidden:

   openstack_architecture_allinone
   openstack_architecture_1+n

.. |grizzly| image:: ../../images/openstack-arch-grizzly-conceptual-v2.jpg
