.. This is an included how-to. 

.. To create an application pool:

.. code-block:: ruby

   iis_pool 'myAppPool_v1_1' do
     runtime_version "2.0"
     pipeline_mode "Classic"
     action :add
   end



