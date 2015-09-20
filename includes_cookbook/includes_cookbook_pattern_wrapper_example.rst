.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


An orgainzation named ``grantmc`` uses |splunk|. The |company_name| |cookbook chef_splunk| cookbook is a public cookbook in the |company_name| cookbook repository on |github|. This cookbook will be used as a |cookbook type_base| by the ``grantmc`` organization. 

The ``server.rb`` recipe in the |cookbook chef_splunk| cookbook installs a |splunk| server, configures it to run as a service, configures user authentication, and enables |ssl|. But the |cookbook chef_splunk| cookbook does not specify how large the database can get before it is frozen:

.. code-block:: ruby

   # https://github.com/chef-cookbooks/chef-splunk

   node.default['splunk']['is_server'] = true
   include_recipe 'chef-splunk::user'
   include_recipe 'chef-splunk::install_server'
   include_recipe 'chef-splunk::service'
   include_recipe 'chef-splunk::setup_auth'
   
   splunk_auth_info = chef_vault_item(:vault, "splunk_#{node.chef_environment}")['auth']
   
   execute 'enable-splunk-receiver-port' do
     command "#{splunk_cmd} enable listen #{node['splunk']['receiver_port']} -auth '#{splunk_auth_info}'"
     not_if do
       begin
         ::TCPSocket.new(node['ipaddress'], node['splunk']['receiver_port'])
       rescue Errno::ECONNREFUSED
         false
       end
     end
   end
   
   if node['splunk']['ssl_options']['enable_ssl']
     include_recipe 'chef-splunk::setup_ssl'
   end

A |cookbook type_wrapper| cookbook can be created that adds the ``maxTotalDataSizeMB`` setting to the |splunk| configuration file. The first step is to create a wrapper cookbook::

  grantmc-chef-splunk
    metadata.rb
    /recipes
	  server.rb
    /templates
      system-inputs.conf.erb

The |metadata rb| file is updated to depend on the |cookbook chef_splunk| cookbook:

.. code-block:: ruby

   name             'grantmc-chef-splunk'
   maintainer       'GrantMC'
   maintainer_email 'grant@mc.com'
   description      'A wrapper cookbook based on chef-splunk'
   version          '0.1.0'
   depends 'chef-splunk', '~> 1.0.4'

A template file named ``system-inputs.conf.erb`` is added to the ``/templates`` directory in the ``grantmc-chef-splunk`` cookbook:

.. code-block:: ruby

   [default]
   host = <%= node['hostname'] %>
   <% if @maxTotalDataSizeMB -%>
   maxTotalDataSizeMB = <%= @maxTotalDataSizeMB %>
   <% end -%>

A recipe named ``server.rb`` is added to the ``/recipes`` directory. This recipe uses the |resource template| resource to add the ``maxTotalDataSizeMB`` setting to the ``inputs.conf`` file:

.. code-block:: ruby

   node.default['splunk']['is_server'] = true
   include_recipe 'chef-splunk'
   
   template "#{splunk_dir}/etc/system/local/inputs.conf" do
     source 'system-inputs.conf.erb'
     owner 'splunk'
     group 'splunk'
     mode 00644
     variables({
       :maxTotalDataSizeMB => splunk_max_total_data_size(
         node['splunk']['server']['max_total_data_size']
       )
     })
     notifies :restart, 'service[splunk]'
   end

Now, instead of adding the ``server.rb`` recipe in the |cookbook chef_splunk| cookbook to the run-list, add the ``server.rb`` recipe in the wrapper cookbook:

.. code-block:: ruby

   run_list(
   
     "recipe[grantmc-chef-splunk::server]",
   
   )

The |chef client| will load the |cookbook chef_splunk| cookbook first, and then will load the ``grantmc-chef-splunk`` cookbook, applying the additional setting.
