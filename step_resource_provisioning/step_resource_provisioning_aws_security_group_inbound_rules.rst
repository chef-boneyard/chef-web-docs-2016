.. This is an included how-to. 

.. To add and edit inbound rules:

.. code-block:: ruby

   aws_security_group 'test-sg' do
     vpc 'test-vpc'
     inbound_rules '0.0.0.0/0' => 80,
                   'other-sg'  => [ 80, 1024..2048 ],
                   '127.0.0.1' => 1024..2048,
                   { load_balancer: 'other-lb' } => 1024..2048
   end
