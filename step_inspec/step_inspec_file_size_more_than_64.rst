.. This is an included how-to. 

.. To test that a file's size is between 64 and 10240:

.. code-block:: bash

   describe file('/') do
     its('size') { should be > 64 }
     its('size') { should be < 10240 }
   end
