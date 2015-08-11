.. This is an included how-to. 

.. To remove the default subnet:

.. code-block:: ruby

   aws_subnet 'default' do
     availability_zone availability_zone
     action :destroy
   end
