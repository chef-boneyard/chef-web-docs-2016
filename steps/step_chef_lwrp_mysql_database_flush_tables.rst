.. This is an included how-to. 

To flush tables with read lock

.. code-block:: ruby

   mysql_database "locking tables for ebs snapshot" do
     action :flush_tables_with_read_lock
     host "localhost"
     username "root"
     password "SuperSecret"
   end
