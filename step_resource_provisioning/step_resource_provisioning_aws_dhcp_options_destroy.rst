.. This is an included how-to. 

.. To delete an option set:

.. code-block:: ruby

   aws_dhcp_options 'ref-dhcp-options' do
     action :destroy
   end
