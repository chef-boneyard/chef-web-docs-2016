.. This is an included how-to. 

.. To verify that only the Administrators group has remote access:

.. code-block:: ruby

   describe security_policy do
     its('SeRemoteInteractiveLogonRight') { should eq '*S-1-5-32-544' }
   end
