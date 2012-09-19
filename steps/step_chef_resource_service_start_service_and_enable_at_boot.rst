.. This is an included how-to. 

To start the service when it is not running and enable it so that it starts at system boot time:

.. code-block:: ruby

   # runs /etc/init.d/example_service (start|stop|restart), etc.
   service "example_service" do
     supports :status => true, :restart => true, :reload => true
     action [ :enable, :start ]
   end
