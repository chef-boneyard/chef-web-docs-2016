.. This is an included how-to. 

.. To test if the postgresql service is both running and enabled:

.. code-block:: ruby

   describe service('postgresql') do
     it { should be_enabled }
     it { should be_running }
   end
