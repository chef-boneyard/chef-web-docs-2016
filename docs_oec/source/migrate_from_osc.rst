=====================================================
Migrate to |chef server oec|
=====================================================

.. warning:: The steps described in this topic are typically enough to complete a migration from |chef server osc| to |chef server oec| (hosted or on premises). That said, |company_name| would prefer that you consult with our support and/or consulting teams prior to doing a migration. This will help ensure that your migration is completed successfully!

The steps for migrating data from |chef server osc| to |chef server oec| (hosted or on premises) is described below. The short version:

#. Create an organization
#. For each node, update the ``chef_server_url`` setting in the |client rb| files so that it points to the URL for hosted |chef server oec|
#. Create an empty |chef repo|
#. Use versioned cookbooks
#. Run ``knife download`` from the |chef server osc| server
#. Update ``chef_server_url``
#. Run ``knife upload`` to hosted |chef server oec|

Create an Organization
=====================================================
An organization is the top-level entity in |chef server oec|. Hosted |chef server oec| allows a single organization; on premises |chef server oec| allows multiple organizations.

To add an organization:

#. Open |webui|.
#. Click |webui admin|.
#. Click |webui admin_orgs|.
#. Click |webui admin_orgs_create|.
#. In the |webui db_create_org| dialog box, enter the full and short names for the organization:
#. Click |webui button_create_organization|.

Update client.rb
=====================================================
On each node, the ``chef_server_url`` setting in the |client rb| file needs to be updated so that its value is the URL for the hosted |chef server oec|.

Create an empty repository
=====================================================
The migration process should use a new repository that does not contain any |chef server| data. The repository only requires a |knife rb| file in the ``.chef/`` directory:

.. code-block:: bash

   mkdir upgrade
   cd upgrade
   mkdir .chef
   vim .chef/knife.rb

The |knife rb| file should look similar to the following:

.. code-block:: ruby

   # Knife Configuration File for Migrations to Enterprise Chef
   #
   ######################################################################
   # In order to interact with a Chef Server, three configuration
   # settings are *required*, and you must change them.
   #
   # node_name
   # client_key
   # chef_server_url
   #
   
   node_name ""
    
   client_key "/etc/chef/client.pem"
    
   chef_server_url "http://url_for_open_source_chef_server"

Use Versioned Cookbooks
=====================================================
On the workstation from which the migration is being done, add the ``versioned_cookbook`` setting to the |knife rb| file, and then set it to true. This setting ensures that all cookbooks and cookbook versions are downloaded when using the ``knife download`` subcommand.

.. code-block:: ruby
   
   ######################################################################
   # In order to download all cookbooks and all cookbook versions
   # the following setting is *required*
   
   versioned_cookbooks "true"

Run ``knife download``
=====================================================
To download the data (including run-lists and node attributes) that is being used with the open source |chef server|, it must be exported from the open source |chef server| so that it can be uploaded to the hosted |chef server oec| server. Use the ``knife download`` subcommand to perform this task.

To download the entire |chef repo| from the |chef server|, browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife download /

This command will create subdirectories for clients, cookbooks, data bags, environments, roles, nodes, and users. These can be deleted and modified before uploading to the server.

Update ``chef_server_url``
=====================================================
On the workstation from which the migration is being done, update the value for ``chef_server_url`` to point to the hosted |chef server oec| URL:

.. code-block:: ruby

   # Knife Configuration File for Migrations to Enterprise Chef
   #
   ######################################################################
   # In order to interact with a Chef Server, three configuration
   # settings are *required*, and you must change them.
   #
   # node_name
   # client_key
   # chef_server_url
   #
   
   node_name ""
    
   client_key "/etc/chef/client.pem"
    
   chef_server_url "http://url_for_hosted_enterprise_chef_server"


Run ``knife upload``
=====================================================
To restore the data (including run-lists and node attributes) that was being used with the open source |chef server| server, it must be uploaded to the hosted |chef server oec| server. Use the ``knife upload`` subcommand to perform this task.

Browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload

or from anywhere in the |chef repo|, enter:

.. code-block:: bash

   $ knife upload .

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.


Configure Permissions for Nodes
=====================================================
The permissions for all nodes need to be set. Typically, all nodes that will be configured by the |chef client| have the same permissions---``LIST``, ``READ``, and ``UPDATE``---and belong to the ``clients`` group.

Add the following to a recipe, and then set this recipe to be the first item in the run-list for all nodes:

.. code-block:: ruby

   #!/usr/bin/env ruby
   require 'rubygems'
   require 'chef/knife'
   
   Chef::Config.from_file(File.join(Chef::Knife.chef_config_dir, 'knife.rb'))
   
   rest = Chef::REST.new(Chef::Config[:chef_server_url])
   
   Chef::Node.list.each do |node|
     %w{read update delete grant}.each do |perm|
       ace = rest.get("nodes/#{node[0]}/_acl")[perm]
       ace['actors'] << node[0] unless ace['actors'].include?(node[0])
       rest.put("nodes/#{node[0]}/_acl/#{perm}", perm => ace)
       puts "Client \"#{node[0]}\" granted \"#{perm}\" access on node \"#{node[0]}\""
     end
   end

and then after all of the nodes have completed their first |chef client| run, remove this recipe from the run-list.




