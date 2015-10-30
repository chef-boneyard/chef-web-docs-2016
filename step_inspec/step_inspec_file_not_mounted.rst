.. This is an included how-to. 

.. To test that a file is not mounted:

.. code-block:: bash

   describe file('/proc/cpuinfo') do
     it { should_not be_mounted }
   end
