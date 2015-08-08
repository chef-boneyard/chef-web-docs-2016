.. This is an included how-to. 

.. To add a defined virtual network (VPC):

.. code-block:: ruby

   aws_vpc 'test-vpc' do
     cidr_block '10.0.0.0/24'
     internet_gateway true
   end
