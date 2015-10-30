.. This is an included how-to. 

.. To test if a file is owned by the root user:

.. code-block:: bash

   describe file('/dev') do
     it { should be_owned_by 'root' }
   end
