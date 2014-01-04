.. This is an included how-to. 

.. To create an application:

.. code-block:: ruby

   iis_app "myApp" do
     path "/v1_1"
     application_pool "myAppPool_v1_1"
     physical_path "#{node['iis']['docroot']}/testfu/v1_1"
     action :add
   end



