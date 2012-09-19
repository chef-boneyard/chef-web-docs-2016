.. This is an included how-to. 

To configure a file from a template:

.. code-block:: ruby

   template "/tmp/config.conf" do
     source "config.conf.erb"
   end
