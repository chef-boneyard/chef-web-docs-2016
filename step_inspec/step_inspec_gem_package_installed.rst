.. This is an included how-to. 

.. To verify that a gem package is installed, with a specific version:

.. code-block:: ruby

   describe gem('rubocop') do
     it { should be_installed }
     its('version') { should eq '0.33.0' }
   end
