.. This is an included how-to. 

.. To re-read the |chef client| configuration during a |chef client| run:

.. code-block:: ruby

   ruby_block 'reload_client_config' do
     block do
       Chef::Config.from_file('/etc/chef/client.rb')
     end
     action :run
   end
