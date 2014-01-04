.. This is an included how-to. 


The following example shows how to set up the ``chef-client`` directory using a template and a script.

The resource that sets up the ``chef-client`` service:

.. code-block:: ruby

   daemontools_service "chef-client" do
     directory "/etc/sv/chef-client"
     template "chef-client"
     action [:enable,:start]
     log true
   end

The template (a file named ``sv-chef-client-run.erb``):

.. code-block:: ruby

   #!/bin/sh
   PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin
   exec 2>&1
   exec /usr/bin/env chef-client -i <%= node["chef_client"]["interval"] %> -s <%= node["chef_client"]["splay"] %>

The script (a file named ``sv-chef-client-log-run.erb``):

.. code-block:: ruby

   #!/bin/sh
   exec svlogd -tt ./main
