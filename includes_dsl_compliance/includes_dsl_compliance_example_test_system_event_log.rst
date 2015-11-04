.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines running |windows| 2012 R2 that pwassword complexity is enabled:

.. code-block:: ruby

   control 'windows-account-102' do
     impact 1.0
     title 'Windows Password Complexity is Enabled'
     desc 'Password must meet complexity requirement'
     describe security_policy do
       its('PasswordComplexity') { should eq 1 }
     end
   end
