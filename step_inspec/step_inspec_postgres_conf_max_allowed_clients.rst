.. This is an included how-to. 

.. To test the maximum number of allowed client connections:

.. code-block:: ruby

   describe postgres_conf do
     its('max_connections') { should eq '5' }
   end
