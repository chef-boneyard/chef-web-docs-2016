.. This is an included how-to. 

.. To create and assemble a |raid| 1 array from two disks with a 64k chunk size:

.. code-block:: ruby

   mdadm '/dev/md0' do
     devices [ '/dev/sda', '/dev/sdb' ]
     level 1
     action [ :create, :assemble ]
   end
