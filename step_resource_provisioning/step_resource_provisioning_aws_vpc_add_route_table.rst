.. This is an included how-to. 

.. To add a defined virtual network (VPC) with route table:

.. code-block:: ruby

   aws_vpc 'provisioning-vpc' do
     cidr_block '10.0.0.0/24'
     internet_gateway true
     main_routes '0.0.0.0/0' => :internet_gateway
   end
