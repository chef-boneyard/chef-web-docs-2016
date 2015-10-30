.. This is an included how-to. 

.. To test that a file does not exist:

.. code-block:: bash

   describe file('/tmpest') do
    it { should_not exist }
   end
