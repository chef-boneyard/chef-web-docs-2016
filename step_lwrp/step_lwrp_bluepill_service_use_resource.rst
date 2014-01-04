.. This is an included how-to. 

.. To use ``bluepill_service`` resources:

.. code-block:: ruby

   service "my_app" do
     provider bluepill_service
     action [:enable, :load, :start]
   end
