.. This is an included how-to. 


The following example shows how to set the administrator for |nagios| on multiple nodes, except when the package already exists on a node:

.. code-block:: ruby

   %w{adminpassword adminpassword-repeat}.each do |setting|
     execute "debconf-set-selections::#{node['nagios']['server']['vname']}-cgi::#{node['nagios']['server']['vname']}/#{setting}" do
       command "echo #{node['nagios']['server']['vname']}-cgi #{node['nagios']['server']['vname']}/#{setting} password #{random_initial_password} | debconf-set-selections"
       not_if "dpkg -l #{node['nagios']['server']['vname']}"
     end
   end