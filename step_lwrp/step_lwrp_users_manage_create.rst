.. This is an included how-to. 

.. To create users based on data bag objects that have a ``group_id`` attribute value of ``2300``:

.. code-block:: ruby

   users_manage "sysadmin" do 
     group_id 2300 
     action :create
   end



