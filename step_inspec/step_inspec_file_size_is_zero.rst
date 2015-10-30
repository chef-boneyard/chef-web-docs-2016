.. This is an included how-to. 

.. To test that a file's size is zero:

.. code-block:: bash

   describe file('/proc/cpuinfo') do
     its('size') { should be 0 }
   end
