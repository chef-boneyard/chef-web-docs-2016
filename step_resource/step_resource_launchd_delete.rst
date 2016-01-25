.. This is an included how-to.

The following example will delete the ``com.chef.client.every15`` launchdaemon and if it is enabled or running it will be unloaded before being deleted:

.. code-block:: ruby

   launchd 'com.chef.client.every15' do
     action :delete
   end
