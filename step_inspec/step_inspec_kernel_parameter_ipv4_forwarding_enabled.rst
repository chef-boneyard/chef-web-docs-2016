.. This is an included how-to. 

.. To test if global forwarding is enabled for an IPv4 address:

.. code-block:: ruby

   describe kernel_parameter('net.ipv4.conf.all.forwarding') do
     its(:value) { should eq 1 }
   end
