.. This is an included how-to. 

.. To associate an elastic IP address to the VPC associated with a machine:

.. code-block:: ruby

   aws_eip_address "Web_IP_1" do
     machine "SRV_OR_Web_1"
     associate_to_vpc true
   end
