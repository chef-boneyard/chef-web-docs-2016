.. This is an included how-to. 

Actual bluepill_service resources:

Example: Using the service resource

.. code-block:: ruby

   service "my_app" do
     provider bluepill_service
     action [:enable, :load, :start]
   end
