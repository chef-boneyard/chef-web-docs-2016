.. This is an included how-to. 

.. To test the DHCP Server feature:

.. code-block:: ruby

   describe windows_feature('DHCP Server') do
     it{ should be_installed }
   end
