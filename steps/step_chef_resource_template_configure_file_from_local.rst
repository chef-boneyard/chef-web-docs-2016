.. This is an included how-to. 

To configure a file from a local template:

.. code-block:: ruby

   template "/tmp/config.conf" do
     local true
     source "/tmp/config.conf.erb"
   end
