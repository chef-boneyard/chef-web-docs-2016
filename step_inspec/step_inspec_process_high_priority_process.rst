.. This is an included how-to. 

.. To test if a high-priority process is running:

.. code-block:: ruby

   describe processes('some_process') do
     its('state') { should eq 'R<' }
   end
