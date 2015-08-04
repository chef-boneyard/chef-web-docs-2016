.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_subnet`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_subnet 'name' do
     availability_zone             String
     cidr_block                    String
     map_public_ip_on_launch       TrueClass, FalseClass
     route_table                   String
     subnet_id                     String
     vpc                           String
   end

where 

* ``aws_subnet`` is the resource
* ``name`` is the name of the resource block and also the name of a subnet within a defined virtual network in |amazon vpc|
* ``availability_zone``, ``cidr_block``, ``map_public_ip_on_launch``, ``route_table``, ``vpc`` are properties of this resource, with the |ruby| type shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_subnet 'name' do
     vpc 'ref-vpc'
     cidr_block '10.0.0.0/24'
     availability_zone 'us-west-1a'
     map_public_ip_on_launch true
     route_table 'ref-public'
     aws_tags :chef_type => 'aws_subnet'
   end
