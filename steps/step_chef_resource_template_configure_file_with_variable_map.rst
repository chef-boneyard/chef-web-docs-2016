.. This is an included how-to. 

To configure a file from a template with a variable map:

.. code-block:: ruby

   template "/tmp/config.conf" do
     source "config.conf.erb"
     variables(
       :config_var => node["configs"]["config_var"]
     )
   end
