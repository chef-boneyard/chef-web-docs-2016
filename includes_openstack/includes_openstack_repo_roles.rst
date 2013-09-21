.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are quite a few roles in the repository. The intention is that they may be deployed stand-alone if necessary (and all include the ``os-base`` role) or you may combine services on a single node. Roles **do not** contain attributes and are strictly for run lists.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Role
     - Description
   * - allinone-compute
     - This will deploy all of the services for Openstack Compute to function on a single box. The run list is the ``os-compute-single-controller`` and ``os-compute-worker`` roles.
   * - os-compute-single-controller
     - Roll-up role for all of the OpenStack Compute services on a single, non-HA controller. The run list is the ``os-ops-database`` role, the ``openstack-ops-database::openstack-db`` recipe, the  ``os-ops-messaging``, ``os-identity``, ``os-image``, ``os-network``, ``os-compute-setup``, ``os-compute-conductor``, ``os-compute-scheduler``, ``os-compute-api``, ``os-block-storage``, ``os-compute-cert``, ``os-compute-vncproxy`` and ``os-dashboard`` roles.
   * - os-base
     - The OpenStack Base role is included in every other role with a recipe in its run list. The run list is the ``openstack-common::default`` and ``openstack-common::logging`` recipes.
   * - os-block-storage
     - Roll-up role for all of the OpenStack Block Storage services. The run list is the ``os-block-storage-api``, ``os-block-storage-scheduler``, ``os-block-storage-volume`` roles and the ``openstack-block-storage::identity_registration`` recipe.
   * - os-block-storage-api
     - Block Storage API service. The run list is the ``openstack-block-storage::api`` recipe.
   * - os-block-storage-scheduler
     - Block Storage scheduler service. The run list is the ``openstack-block-storage::scheduler`` recipe.
   * - os-block-storage-volume
     - Block Storage volume service. The run list is the ``openstack-block-storage::volume`` recipe.
   * - os-compute-api
     - Roll-up role for all the Compute API services. The run list is the ``os-compute-api-ec2``, ``os-compute-api-os-compute``, ``os-compute-api-metadata`` roles and the ``openstack-compute::identity_registration`` recipe.
   * - os-compute-api-ec2
     - Role for the Compute EC2 API service. The run list is the ``openstack-compute::api-ec2`` recipe.
   * - os-compute-api-os-compute
     - Role for the Compute OpenStack API service. The run list is the ``openstack-compute::api-os-compute`` recipe.
   * - os-compute-api-metadata
     - Role for the Compute metadata service. The run list is the ``openstack-compute::api-metadata`` recipe.
   * - os-compute-cert
     - OpenStack Compute Cert service. The run list is the ``openstack-compute::nova-cert`` recipe.
   * - os-compute-conductor
     - OpenStack Compute conductor service. The run list is the ``openstack-compute::conductor`` recipe.
   * - os-compute-scheduler
     - Nova scheduler. The run list is the ``openstack-compute::scheduler`` recipe.
   * - os-compute-setup
     - Nova setup and identity registration. The run list is the ``openstack-compute::nova-setup`` and ``openstack-compute::identity-registration`` recipes.
   * - os-compute-vncproxy
     - Nova VNC Proxy. The run list is the ``openstack-compute::vncproxy`` recipe.
   * - os-compute-worker
     - The Compute worker node, most likely with a hypervisor. The run list is the ``openstack-compute::compute`` recipe.
   * - os-dashboard
     - Horizon Dashboard service. The run list is the ``openstack-dashboard::server`` recipe.
   * - os-identity
     - The Keystone Identity service. The run list is the ``openstack-identity::server`` and ``openstack-identity::registration`` recipes.
   * - os-image
     - Roll-up role of the Glance Image service. The run list is the ``openstack-image::identity_registration`` recipe and the ``os-image-registry`` and ``os-image-api`` roles.
   * - os-image-api
     - The Glance Image API service. The run list is the ``openstack-image::api`` recipe.
   * - os-image-api
     - The Glance Image registry service. The run list is the ``openstack-image::registry`` recipe.
   * - os-network
     - Configures OpenStack networking, managed by attribute for either nova-network or quantum. The run list is the ``openstack-network::common`` recipe.
   * - os-object-storage-account
     - The Swift object storage account service. The run list is the ``openstack-object-storage::account`` recipe.
   * - os-object-storage-container
     - The Swift object storage container service. The run list is the ``openstack-object-storage::container`` recipe.
   * - os-object-storage-management
     - The Swift object storage management service. The run list is the ``openstack-object-storage::management`` recipe.
   * - os-object-storage-object
     - The Swift object storage object service. The run list is the ``openstack-object-storage::object`` recipe.
   * - os-object-storage-proxy
     - The Swift object storage proxy service. The run list is the ``openstack-object-storage::proxy`` recipe.
   * - os-ops-caching
     - Installs memcache server. The run list is the ``memcached::default`` recipe.
   * - os-ops-database
     - The database server (non-HA). The run list is the ``openstack-ops-database::server`` recipe.
   * - os-ops-messaging
     - The messaging server (non-HA). The run list is the ``openstack-ops-messaging::server`` recipe.

