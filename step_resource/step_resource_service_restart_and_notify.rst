.. This is an included how-to. 

The following example shows how start a service named ``example_service`` and immediately notify the |nginx| service to restart.

.. code-block:: ruby

   service 'example_service' do
     action :start
     provider Chef::Provider::Service::Init
     notifies :restart, 'service[nginx]', :immediately
   end

where by using the default ``provider`` for the |resource service|, the recipe is telling the |chef client| to determine the specific provider to be used during the |chef client| run based on the platform of the node on which the recipe will run.
