.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are quite a few roles in the repository. The intention is that they may be deployed stand-alone if necessary (and all include the ```os-base``` role), or you may use the roll-up name for the entire service. For example, the role ```os-image``` includes the Image registry and api service roles ```os-image-registry``` and ```os-image-api```. Roles **do not** contain attributes and are strictly for run lists.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Role
     - Description
   * - allinone-compute
     - This will deploy all of the services for Openstack Compute to function on a single box. The run list is the ```os-compute-single-controller``` and ```os-compute-worker``` roles.
   * - os-base
     - The OpenStack Base role is included in every other role with a recipe in its run list. The run list is the ```openstack-common::default``` and ```openstack-common::logging``` recipes.
   * - os-block-storage
     - Configures OpenStack block storage, configured by attributes.. The run list is the ```openstack-block-storage::api```, ```openstack-block-storage::scheduler```, ```openstack-block-storage::volume``` and ```openstack-block-storage::identity_registration``` recipes.
   * - os-compute-single-controller
     - Roll-up role for all of the OpenStack Compute services on a single, non-HA controller. The run list is the ```os-ops-database```, ```os-ops-messaging```, ```os-identity```, ```os-image```, ```os-network```, ```os-compute-scheduler```, ```os-compute-api```, ```os-block-storage```, ```os-compute-cert```, ```os-compute-vncproxy``` and ```os-dashboard``` roles.
   * - os-compute-api
     - Role for all the Compute API services. The run list is the ```openstack-compute::api-ec2```, ```openstack-compute::api-os-compute```, ```openstack-compute::api-metadata``` and ```openstack-compute::identity_registration``` recipes.
   * - os-compute-cert
     - OpenStack Compute Cert service. The run list is the ```openstack-compute::nova-cert``` recipe.
   * - os-compute-scheduler
     - Nova scheduler. The run list is the ```openstack-compute::scheduler``` recipe.
   * - os-compute-vncproxy
     - Nova VNC Proxy. The run list is the ```openstack-compute::vncproxy``` recipe.
   * - os-compute-worker
     - The Compute worker node, most likely with a hypervisor. The run list is the ```openstack-compute::compute``` recipe.
   * - os-dashboard
     - Horizon Dashboard service. The run list is the ```openstack-ops-database::openstack-db``` and ```openstack-dashboard::server``` recipes.
   * - os-identity
     - The Keystone Identity service. The run list is the ```openstack-identity::server``` and ```openstack-identity::registration``` recipes.
   * - os-image
     - The Glance Image service. The run list is the ```openstack-ops-database::openstack-db```, ```openstack-image::registry```, ```openstack-image::api``` and ```openstack-image::identity_registration``` recipes.
   * - os-network
     - Configures OpenStack networking, managed by attribute for either nova-network or quantum. The run list is the ```openstack-network::default``` recipe.
   * - os-object-storage
     - Includes
   * - os-object-storage-account
     - Includes
   * - os-object-storage-container
     - Includes
   * - os-object-storage-management
     - Includes
   * - os-object-storage-object
     - Includes
   * - os-object-storage-proxy
     - Includes
   * - os-ops-caching
     - Installs memcache server. The run list is the ```memcached::default``` recipe.
   * - os-ops-database
     - The database server (non-HA). The run list is the ```openstack-ops-database::server``` recipe.
   * - os-ops-messaging
     - The messaging server (non-HA). The run list is the ```openstack-ops-messaging::server``` recipe.

