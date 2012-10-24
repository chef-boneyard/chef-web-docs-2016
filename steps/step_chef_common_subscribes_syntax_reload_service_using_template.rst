.. This is an included how-to. 

To reload a service based on a template:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
   end

   service "apache" do
     supports :restart => true, :reload => true
     action :enable
     subscribes :reload, resources("template[/tmp/somefile]"), :immediately
   end

