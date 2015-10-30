.. This is an included how-to. 

.. To test if eth0 is a secondary interface for bond0:

.. code-block:: ruby

   describe bond('bond0') do
     it { should exist }
     it { should have_interface 'eth0' }
   end
