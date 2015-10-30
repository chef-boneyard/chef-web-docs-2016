.. This is an included how-to. 

.. To verify available users for the MySQL server:

.. code-block:: ruby

   describe user('root') do
     it { should exist }
     it { should belong_to_group 'root' }
     its('uid') { should eq 0 }
     its('groups') { should eq ['root'] }
   end
   
   describe user('mysql') do
    it { should_not exist }
   end
