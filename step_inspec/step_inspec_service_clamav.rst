.. This is an included how-to. 

.. To test if ClamAV (an antivirus engine) is installed and running:

.. code-block:: ruby

   describe package('clamav') do
     it { should be_installed }
     its('version') { should eq '0.98.7' }
   end
   
   describe service('clamd') do
     it { should_not be_enabled }
     it { should_not be_installed }
     it { should_not be_running }
   end
