.. This is an included how-to. 

.. To test if the init process is owned by the root user: 

.. code-block:: ruby

   describe processes('init') do
     its('user') { should eq 'root' }
   end
