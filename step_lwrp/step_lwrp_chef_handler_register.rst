.. This is an included how-to. 

To register the ``Chef::Handler::JsonFile`` handler that ships as part of the |chef| gem:

.. code-block:: ruby

   chef_handler "Chef::Handler::JsonFile" do
     source "chef/handler/json_file"
     arguments :path => '/var/chef/reports'
     action :enable
   end
