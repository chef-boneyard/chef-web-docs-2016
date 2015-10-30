.. This is an included how-to. 

.. To verify that bower is installed, with a specific version:

.. code-block:: ruby

   describe npm('bower') do
     it { should be_installed }
     its('version') { should eq '1.4.1' }
   end
