.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_cache_replication_group`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_cache_replication_group 'name' do
     az_mode                       'string'
     automatic_failover            true
     description                   'string'
     engine                        'string'
     engine_version                'string'
     group_name                    'string'  # defaults to 'name' if not specified
     node_type                     'string'
     number_cache_clusters         integer
     preferred_availability_zones  'string' or [ array ]
     security_groups               'string', [ array ]
     subnet_group_name             'string'
   end

where 

* ``aws_cache_replication_group`` is the resource
* ``name`` is the name of the resource block
* ``automatic_failover``, ``engine``, ``engine_version``, ``node_type``, ``number_cache_clusters``, ``preferred_availability_zones``, and ``subnet_group_name`` are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_cache_replication_group 'name' do
     automatic_failover true
     engine 'name'
     engine_version '1.2.3'
     node_type 'cache.m3.large'
     number_cache_clusters 3
     preferred_availability_zones [ 
       `PreferredAvailabilityZones.member.1=us-east-1a`, 
       `PreferredAvailabilityZones.member.2=us-east-1c`, 
       `PreferredAvailabilityZones.member.3=us-east-1d`
     ]
     subnet_group_name 'subnet-1'
   end
