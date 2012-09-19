.. This is an included how-to. 

To start a service when it is not running:

.. code-block:: ruby

   # typically this will run /etc/init.d/example_service start
   service "example_service" do
     action :start
   end
