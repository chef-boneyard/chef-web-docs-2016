.. This is an included how-to. 

Example: enable the CloudkickHandler which was dropped off in the default handler path. Also passes the oauth key/secret to the handler's initializer

.. code-block:: ruby

   chef_handler "CloudkickHandler" do
     source "#{node['chef_handler']['handler_path']}/cloudkick_handler.rb"
     arguments [node['cloudkick']['oauth_key'], node['cloudkick']['oauth_secret']]
     action :enable
   end
