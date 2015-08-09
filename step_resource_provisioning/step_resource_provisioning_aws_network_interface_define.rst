.. This is an included how-to. 

.. To define a network interface:

.. code-block:: ruby

   aws_network_interface 'ref-eni-1' do
     machine 'ref-machine-eni-1'
     subnet 'ref-subnet-eni'
     security_groups ['ref-sg1-eni']
     description 'ref-eni-desc'
   end
