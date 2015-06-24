.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_vpc`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_vpc 'name' do
     cidr_block                    'string'
     dhcp_options                  'string'
     enable_dns_hostnames          true
     enable_dns_support            true
     internet_gateway              false
     instance_tenancy              :default or :dedicated
     main_route_table              'string'
     main_routes                   Hash
     vpc_id                        string
   end

where 

* ``aws_vpc`` is the resource
* ``name`` is the name of the resource block and also the name of the defined virtual network in |amazon vpc|
* ``cidr_block``, ``dhcp_options``, ``enable_dns_hostnames``, ``enable_dns_support``, ``internet_gateway``, ``instance_tenancy``, and ``main_routes`` are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   aws_vpc 'name' do
     cidr_block '10.0.0.0/24'
     internet_gateway true
     instance_tenancy :default
     main_routes '0.0.0.0/0' => :internet_gateway
     dhcp_options 'ref-dhcp-options'
     enable_dns_support true
     enable_dns_hostnames true
     aws_tags :chef_type => "aws_vpc"
   end
