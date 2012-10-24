.. This is an included how-to. 

Using ``provider`` and ``supports``:

.. code-block:: ruby

   service "some_service" do
     provider Chef::Provider::Service::Upstart
     supports :status => true, :restart => true, :reload => true
     action [ :enable, :start ]
   end

