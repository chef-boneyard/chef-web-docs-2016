.. This is an included how-to. 

Example: The following example will set up /etc/sv/chef-client directory, /etc/sv/chef-client/run script from the specified template, and the /etc/sv/chef-client/log/run script.

.. code-block:: ruby

   chef-client service
   daemontools_service "chef-client" do
     directory "/etc/sv/chef-client"
     template "chef-client"
     action [:enable,:start]
     log true
   end
   sv-chef-client-run.erb
   #!/bin/sh
   PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin
   exec 2>&1
   exec /usr/bin/env chef-client -i <%= node["chef_client"]["interval"] %> -s <%= node["chef_client"]["splay"] %>
   sv-chef-client-log-run.erb
   #!/bin/sh
   exec svlogd -tt ./main
