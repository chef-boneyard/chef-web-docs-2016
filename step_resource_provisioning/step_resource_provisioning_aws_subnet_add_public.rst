.. This is an included how-to. 

.. To add a public subnet:

.. code-block:: ruby

   aws_subnet "public-#{availability_zone}" do
     availability_zone availability_zone
     cidr_block "10.0.#{128+class_c}.0/24"
     route_table 'public-routes'
     map_public_ip_on_launch true
   end
