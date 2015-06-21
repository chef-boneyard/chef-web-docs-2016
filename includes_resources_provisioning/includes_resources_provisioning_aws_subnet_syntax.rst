.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_subnet`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_subnet 'name' do
     vpc 'ref-vpc'
     cidr_block '10.0.0.0/24'
     availability_zone 'us-west-1a'
     map_public_ip_on_launch true
     route_table 'ref-public'
     aws_tags :chef_type => "aws_subnet"
   end

where 

* ``aws_subnet`` is the resource
* ``name`` is the name of the resource block
* ``availability_zone``, ``cidr_block``, ``map_public_ip_on_launch``, ``route_table``, ``vpc`` are attributes of this resource, with example values shown. |see attributes|
