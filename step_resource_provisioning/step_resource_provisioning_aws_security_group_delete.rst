.. This is an included how-to. 

.. To delete a security group:

.. code-block:: ruby

   aws_security_group 'test-sg' do
     vpc 'test-vpc'
     action :delete
   end	
