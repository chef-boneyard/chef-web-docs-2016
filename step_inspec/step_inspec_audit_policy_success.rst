.. This is an included how-to. 

.. To test that a parameter is set to "Success":

.. code-block:: ruby

   describe audit_policy do
     its('User Account Management') { should eq 'Success' }
   end
