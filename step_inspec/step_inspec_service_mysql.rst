.. This is an included how-to. 

.. To test if the mysql service is both running and enabled:

.. code-block:: ruby

   describe service('mysqld') do
     it { should be_enabled }
     it { should be_running }
   end
