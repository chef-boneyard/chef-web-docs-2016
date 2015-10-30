.. This is an included how-to. 

.. To test if a file exists:

.. code-block:: bash

   describe file('/tmp') do
    it { should exist }
   end
