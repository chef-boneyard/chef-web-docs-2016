.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The cookbooks used by |chef openstack| are hosted on the `OpenStack StackForge repository on GitHub <https://github.com/stackforge/>`_. The development documentation covers interacting with the upstream repositories and testing.

Basics
---------------------

Operations
+++++++++++++++++++++
Operational concerns such as logging, monitoring and provisioning nodes are considered outside the scope of these cookbooks and the StackForge repositories. We do encourage cookbooks of the pattern "openstack-ops-monitoring-nagios" or "openstack-ops-monitoring-sensu" for example and would link to repositories providing them that utilize these cookbooks.

High Availability
+++++++++++++++++++++
These cookbooks do not currently support HA configurations, but may eventually provide example implementations.

Packages
+++++++++++++++++++++
The cookbooks currently support installing packages from upstream Linux distributions. This assumption may change in the future with `Omnibus full-stack installers <https://github.com/opscode/omnibus-ruby>`_ of OpenStack.

Chef Assumptions
+++++++++++++++++++++

.. include:: ../../includes_openstack/includes_openstack_deployment_chef.rst


Cookbooks and Repositories
--------------------------

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - OpenStack Chef Repo
     - provides a reference Chef repository with example roles and environments for the OpenStack deployment.
   * - Common
     - provides common libraries and configuration across all of the cookbooks
   * - Ops Database
     - deploys and configures a reference database implementation used by the OpenStack deployment.
   * - Ops Messaging
     - deploys and configures a reference messaging implementation used by the OpenStack deployment.
   * - Block Storage
     - deploys and configures the OpenStack Block Storage service **Cinder**
   * - Compute
     - deploys and configures the OpenStack Compute service **Nova**
   * - Dashboard
     - deploys and configures the OpenStack Dashboard service **Horizon**
   * - Identity
     - deploys and configures the OpenStack Identity service **Keystone**
   * - Image
     - deploys and configures the OpenStack Image service **Glance**
   * - Metering
     - deploys and configures the OpenStack Metering service **Ceilometer**
   * - Network
     - deploys and configures the OpenStack Network service **Neutron** (formerly 'Quantum')
   * - Object Storage
     - deploys and configures the OpenStack Object Storage service **Swift**


