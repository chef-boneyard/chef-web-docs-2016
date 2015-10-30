.. This is an included how-to. 

.. To test if a file is a file and not a directory:

.. code-block:: bash

   describe file('/proc/version') do
     its('type') { should eq 'file' }
     it { should be_file }
     it { should_not be_directory }
   end
