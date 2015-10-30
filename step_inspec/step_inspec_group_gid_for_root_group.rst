.. This is an included how-to. 

.. To test the group identifier for the root group:

.. code-block:: ruby

   describe group('root') do
     it { should exist }
     its('gid') { should eq 0 }
   end
