.. This is an included how-to. 

To query a database

.. code-block:: ruby

   mysql_database "flush the privileges" do
     action :query
     host "localhost"
     username "root"
     password "SuperSecret"
     sql "flush privileges"
   end
