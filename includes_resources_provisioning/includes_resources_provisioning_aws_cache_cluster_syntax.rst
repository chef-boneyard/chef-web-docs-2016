.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_cache_cluster`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_cache_cluster 'name' do
     az_mode                       'string'
     cluster_name                  'string'  # defaults to 'name' if not specified
     engine                        'string'
     engine_version                'string'
     node_type                     'string'
     number_nodes                  integer
     preferred_availability_zone   'string'
     preferred_availability_zones  'string' or [ array ]
     security_groups               'string', [ array ]
     subnet_group_name             'string'
   end

where 

* ``aws_cache_cluster`` is the resource
* ``name`` is the name of the resource block
* ``az_mode``, ``engine``, ``engine_version``, ``node_type``, ``number_nodes``, ``preferred_availability_zones``, and ``subnet_group_name`` are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_cache_cluster 'name' do
     az_mode 'single-az'
     engine 'name'
     engine_version '1.2.3'
     node_type 'cache.m3.large'
     number_nodes 10
     preferred_availability_zones [ 
       `PreferredAvailabilityZones.member.1=us-east-1a`, 
       `PreferredAvailabilityZones.member.2=us-east-1c`, 
       `PreferredAvailabilityZones.member.3=us-east-1d`
     ]
     subnet_group_name 'subnet-1'
   end
