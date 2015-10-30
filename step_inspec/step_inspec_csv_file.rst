.. This is an included how-to. 

.. To test a CSV file:

.. code-block:: ruby

   describe csv('some_file.csv') do
     its('setting') { should eq 1 }
   end
