.. This is an included how-to.

The following example will creates a launchd plist and ensures its enabled. If a launchd plist already exists (but does not match), updates the launchdaemon to match, and restarts the launchdaemon.

.. code-block:: ruby

   launchd 'com.chef.client.every15' do
     program '/opt/chef/bin/chef-client'
     start_interval 900
     run_at_load true
     action :enable
   end


