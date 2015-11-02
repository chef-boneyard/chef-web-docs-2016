.. This is an included how-to. 

.. To test which variables from the local environment are sent to the server:

.. code-block:: ruby

   only_if do
     command('sshd').exist? or command('ssh').exists?
   end

   describe ssh_config do
     its('SendEnv') { should include('GORDON_CLIENT') }
   end
