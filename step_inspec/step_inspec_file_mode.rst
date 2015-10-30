.. This is an included how-to. 

.. To test the mode for a file:

.. code-block:: bash

   describe file('/dev') do
    its('mode') { should eq 00755 }
   end
