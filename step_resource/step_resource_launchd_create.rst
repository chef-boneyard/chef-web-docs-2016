.. This is an included how-to.

There are a few ways to use the |resource launchd| resource to create launchd plists.

The first example, will use some of the possible launchd keys to create a launchdaemon to run chef-client every15 mins:

.. code-block:: ruby

   launchd 'com.chef.client.every15' do
     program '/opt/chef/bin/chef-client'
     start_interval 900
     run_at_load true
   end

Next you can create a launchd plist with a hash and using the normal keys you would use to create a launchdaemon to run chef-client every15 mins:

.. code-block:: ruby

   plist_options = {
     "Label" => "com.CPE.every15",
     "Program" => '/opt/chef/bin/chef-client'
     "StartInterval" => 900,
     "TimeOut" => 14400
   }

   launchd 'com.chef.client' do
     hash plist_options
   end

Finally you can create a launchd plist with a cookbook file to create a launchdaemon to run chef-client every15 mins:

.. code-block:: ruby

   launchd 'com.chef.client' do
     source 'com.chef.client.plist'
   end
