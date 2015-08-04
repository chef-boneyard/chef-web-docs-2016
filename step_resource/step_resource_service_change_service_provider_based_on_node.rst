.. This is an included how-to. 

.. To change a service provider depending on a node's platform:

.. code-block:: ruby

   service 'example_service' do
     case node['platform']
     when 'ubuntu'
       if node['platform_version'].to_f >= 9.10
         provider Chef::Provider::Service::Upstart
       end
     end
     action [:enable, :start]
   end
