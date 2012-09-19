.. This is an included how-to. 

To create an application database

.. code-block:: ruby

   mysql_database "create my_app database" do
     host "localhost"
     username "root"
     password "SuperSecret"
     database "my_app_production"
     action [:create_db]
   end
