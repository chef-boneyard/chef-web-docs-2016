.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines to ensure |windows remote desktop| requires strong encryption:

.. code-block:: ruby

   rule 'windows-rdp-101' do
     impact 1.0
     title 'Strong Encryption for Windows Remote Desktop Required'
     describe group_policy('Windows Components\\Remote Desktop Services\\Remote Desktop Session Host\\Security') do
       its('Set client connection encryption level') { should eq 3 }
     end
   end
