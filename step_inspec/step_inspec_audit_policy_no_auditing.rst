.. This is an included how-to. 

.. To test that a parameter is not set to "No Auditing":

.. code-block:: ruby

   describe audit_policy do
     its('Other Account Logon Events') { should_not eq 'No Auditing' }
   end
