.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``aws_tags``
     - |aws_tag|

       .. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_attributes_aws_tag_example.rst
   * - ``az_mode``
     - Use to specify if nodes in this group are created in a single availability zone or across multiple availability zones. This property is supported only for |memcached| cache clusters. Possible values: ``single-az``, ``cross-az``.
   * - ``chef_server``
     - |provisioning_server|
   * - ``cluster_name``
     - Use to specify the name of the cache cluster.
   * - ``driver``
     - |driver_provisioning|
   * - ``engine``
     - Use to specify the name of the cache engine for the cache cluster.
   * - ``engine_version``
     - Use to specify the version number of the cache engine.
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``node_type``
     - Use to specify the compute and memory capacity of the nodes in the cache replication group. The possible values depend on the type of nodes: general purpose volumes, provisioned volumes, or magnetic volumes. For example: ``cache.t2.small``, ``cache.r3.2xlarge``, or ``cache.m3.large``.
   * - ``number_nodes``
     - Use to specify the initial number of cache nodes for a cache cluster. If |memcached| is available, valid values are between ``1`` and ``20``. Default value: ``1``.
   * - ``preferred_availability_zone``
     - Use to specify the perferred availability zone for this cache cluster. Use this property **or** use ``preferred_availability_zones``.
   * - ``preferred_availability_zones``
     - Use to specify an array of identifiers for |amazon ec2| availability zones available to this cache cluster. Use this property **or** use ``preferred_availability_zone``. For example:

       .. code-block:: ruby

          preferred_availability_zones [ 
            'PreferredAvailabilityZones.member.1=us-east-1a', 
            'PreferredAvailabilityZones.member.2=us-east-1c', 
            'PreferredAvailabilityZones.member.3=us-east-1d'
          ]

   * - ``security_groups``
     - Use to specify an array of identifiers for |amazon vpc| security groups that are associated with this cache replication group.
   * - ``subnet_group_name``
     - Use to specify the name of the cache subnet group that to use with this cache replication group.
