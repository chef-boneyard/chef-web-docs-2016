.. This is an included how-to. 

.. To test which variables from the local environment are sent to the server:

.. code-block:: ruby

   return unless command('ssh').exist?
   
   describe ssh_config do
     its('SendEnv') { should include('GORDON_CLIENT') }
   end
