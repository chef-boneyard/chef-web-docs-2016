.. This is an included how-to. 

.. To test if global forwarding is disabled for an IPv6 address:

.. code-block:: ruby

   describe kernel_parameter('net.ipv6.conf.all.forwarding') do
     its(:value) { should eq 0 }
   end
