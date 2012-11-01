.. This is an included how-to. 

To set the permissions for a user:

.. code-block:: ruby

   rabbitmq_user "nova" do 
     vhost "/nova" 
     permissions "\".\" \".\" \".*\"" 
     action :set_permissions 
   end



