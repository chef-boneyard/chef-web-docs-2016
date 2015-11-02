.. This is an included how-to. 

.. To test for IPv6-only addresses:

.. code-block:: ruby

   describe sshd_config do
     its('AddressFamily') { should eq 'inet6' }
   end
