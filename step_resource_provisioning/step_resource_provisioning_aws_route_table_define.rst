.. This is an included how-to. 

.. To define a route table:

.. code-block:: ruby

   aws_route_table 'route-table' do
     vpc 'vpc'
     routes '0.0.0.0/0' => :internet_gateway
   end
