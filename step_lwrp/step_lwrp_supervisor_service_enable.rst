.. This is an included how-to. 

To enable a service named ``celery``:

.. code-block:: ruby

   ruby supervisor_service "celery" do 
     action :enable 
     autostart false 
     user "nobody" 
   end



