.. This is an included how-to. 

To unlock tables

.. code-block:: ruby

   mysql_database "unlocking tables after ebs snapshot" do
     action :unflush_tables
     host "localhost"
     username "root"
     password "SuperSecret"
   end
