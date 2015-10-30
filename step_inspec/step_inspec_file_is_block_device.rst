.. This is an included how-to. 

.. To test if a file is a block device:

.. code-block:: bash

   describe file('/dev/zero') do
     its('type') { should eq 'block' }
     it { should be_character_device }
     it { should_not be_file }
     it { should_not be_directory }
   end
