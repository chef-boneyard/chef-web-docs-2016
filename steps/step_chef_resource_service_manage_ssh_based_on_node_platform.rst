.. This is an included how-to. 

To manage the |ssh| service, named depending on the platform of the node:

.. code-block:: ruby

   service "example_service" do
     case node["platform"]
     when "CentOS","RedHat","Fedora"
       service_name "redhat_name"
     else
       service_name "other_name"
     end
     supports :restart => true
     action [ :enable, :start ]
   end
