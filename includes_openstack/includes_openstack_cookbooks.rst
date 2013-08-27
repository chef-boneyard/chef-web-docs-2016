The cookbooks used by :doc:`Chef for OpenStack </openstack>` are hosted on the `OpenStack StackForge repository on GitHub <https://github.com/stackforge/>`_. The :doc:`Development documentation </openstack_development>` covers interacting with the upstream repositories and testing.

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
   * - :doc:`OpenStack Chef Repo </openstack_chef_repo>`
     - provides a reference Chef repository with example roles and environments for the OpenStack deployment.
   * - :doc:`Common </openstack_cookbooks_common>`
     - provides common libraries and configuration across all of the cookbooks
   * - :doc:`Ops Database </openstack_cookbooks_ops_database>`
     - deploys and configures a reference database implementation used by the OpenStack deployment.
   * - :doc:`Ops Messaging </openstack_cookbooks_ops_messaging>`
     - deploys and configures a reference messaging implementation used by the OpenStack deployment.
   * - :doc:`Block Storage </openstack_cookbooks_block_storage>`
     - deploys and configures the OpenStack Block Storage service **Cinder**
   * - :doc:`Compute </openstack_cookbooks_compute>`
     - deploys and configures the OpenStack Compute service **Nova**
   * - :doc:`Dashboard </openstack_cookbooks_dashboard>`
     - deploys and configures the OpenStack Dashboard service **Horizon**
   * - :doc:`Identity </openstack_cookbooks_identity>`
     - deploys and configures the OpenStack Identity service **Keystone**
   * - :doc:`Image </openstack_cookbooks_image>`
     - deploys and configures the OpenStack Image service **Glance**
   * - :doc:`Metering </openstack_cookbooks_metering>`
     - deploys and configures the OpenStack Metering service **Ceilometer**
   * - :doc:`Network </openstack_cookbooks_network>`
     - deploys and configures the OpenStack Network service **Neutron** (formerly 'Quantum')
   * - :doc:`Object Storage </openstack_cookbooks_object_storage>`
     - deploys and configures the OpenStack Object Storage service **Swift**

.. toctree::
   :hidden:

   openstack_cookbooks_common
   openstack_cookbooks_ops_database
   openstack_cookbooks_ops_messaging
   openstack_cookbooks_block_storage
   openstack_cookbooks_compute
   openstack_cookbooks_dashboard
   openstack_cookbooks_identity
   openstack_cookbooks_image
   openstack_cookbooks_metering
   openstack_cookbooks_network
   openstack_cookbooks_object_storage
