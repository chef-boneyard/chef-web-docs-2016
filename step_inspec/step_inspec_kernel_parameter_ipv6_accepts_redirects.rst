.. This is an included how-to. 

.. To test if an IPv6 address accepts redirects:

.. code-block:: ruby

   describe kernel_parameter('net.ipv6.conf.interface.accept_redirects') do
     its(:value) { should eq 'true' }
   end
