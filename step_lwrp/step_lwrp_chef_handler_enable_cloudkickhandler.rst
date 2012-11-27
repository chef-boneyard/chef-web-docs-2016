.. This is an included how-to. 

To enable the ``CloudkickHandler``, which was added to the default handler path. This example also passes the ``oauth`` key/secret to the handler's initializer:

.. code-block:: ruby

   chef_handler "CloudkickHandler" do
     source "#{node['chef_handler']['handler_path']}/cloudkick_handler.rb"
     arguments [node['cloudkick']['oauth_key'], node['cloudkick']['oauth_secret']]
     action :enable
   end
