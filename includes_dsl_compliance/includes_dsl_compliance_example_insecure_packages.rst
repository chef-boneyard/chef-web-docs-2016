.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines for insecure packages:

.. code-block:: ruby

   control 'cis-os-services-5.1.3' do
     impact 0.7
     title '5.1.3 Ensure rsh client is not installed'
     describe package('rsh') do
       it { should_not be_installed }
     end

     describe package('rsh-redone-client') do
       it { should_not be_installed }
     end
   end
