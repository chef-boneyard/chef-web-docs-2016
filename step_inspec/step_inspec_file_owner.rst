.. This is an included how-to. 

.. To test the owner of a file:

.. code-block:: bash

   describe file('/root') do
     its('owner') { should eq 'root' }
   end
