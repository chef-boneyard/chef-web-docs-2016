.. This is an included how-to. 

.. To test which variables may be sent to the server:

.. code-block:: ruby

   return unless command('sshd').exist?
   
   describe sshd_config do
     its('AcceptEnv') { should include('GORDON_SERVER') }
   end
