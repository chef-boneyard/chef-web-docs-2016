.. This is an included how-to. 

.. To manage a service whose name depends on the platform of the node on which it runs:

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
