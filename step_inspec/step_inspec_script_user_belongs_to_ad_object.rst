.. This is an included how-to. 

.. To test that user Grantmc belongs to the Active Directory object: 

.. code-block:: ruby

   describe script do
     its('ADObject') { should include 'Get-ADPermission -Identity Grantmc' }
   end
