.. This is an included how-to.

The following example will unload the ``com.chef.client.every15`` launchdaemon:

.. code-block:: ruby

   launchd 'com.chef.client.every15' do
     action :disable
   end
