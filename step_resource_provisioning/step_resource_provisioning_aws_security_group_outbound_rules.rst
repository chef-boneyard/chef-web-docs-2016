.. This is an included how-to. 

.. To add and edit outbound rules:

.. code-block:: ruby

   aws_security_group 'test-sg' do
     vpc 'test-vpc'
     outbound_rules 80                 => '0.0.0.0/0',
                    [ 80, 2048..4096 ] => 'other-sg',
                    2048..4096         => '127.0.0.1',
                    1024..2048         => { load_balancer: 'other-lb' }
   end
