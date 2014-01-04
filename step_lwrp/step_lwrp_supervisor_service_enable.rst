.. This is an included how-to.

.. To enable the |celery| service:

.. code-block:: ruby

   supervisor_service "celery" do
     action :enable
     autostart false
     user "nobody"
   end

