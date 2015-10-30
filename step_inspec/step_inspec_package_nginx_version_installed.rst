.. This is an included how-to. 

.. To test if nginx version 1.9.5 is installed:

.. code-block:: ruby

   describe package('nginx') do
     it { should be_installed }
     its('version') { should eq 1.9.5 }
   end
