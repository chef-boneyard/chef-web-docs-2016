.. This is an included how-to. 

.. To test if a file is a directory:

.. code-block:: bash

   describe file('/tmp') do
    its('type') { should eq :directory }
    it { should be_directory }
   end
