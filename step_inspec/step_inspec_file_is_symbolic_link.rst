.. This is an included how-to. 

.. To test if a file is a symbolic link:

.. code-block:: bash

   describe file('/dev/stdout') do
     its('type') { should eq 'symlink' }
     it { should be_symlink }
     it { should_not be_file }
     it { should_not be_directory }
   end
