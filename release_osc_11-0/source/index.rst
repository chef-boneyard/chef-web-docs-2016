=====================================================
All about |chef server osc| 11.0 ... 
=====================================================

.. include:: ../../includes_chef/includes_chef_index_osc.rst

Getting Started
=====================================================
If you are new to |chef server osc|, familiarize yourself with its main components: `the server, workstations, and nodes <http://docs.opscode.com/open_source/osc_overview.html>`_.

Cookbooks are the fundamental unit of configuration and policy distribution. Cookbooks are authored using a programming language called |ruby|. Being an expert in |ruby| is not a requirement, but knowing some basic |ruby| will help you a lot. If you're new to |ruby|, `familiarize yourself with the basics <http://docs.opscode.com/open_source/just_enough_ruby_for_chef.html>`_.

If you want to try out |chef server osc|, use the hosted |chef server|. First, `install the server <http://docs.opscode.com/open_source/install_server.html>`_, then `install the chef-client on a workstation <http://docs.opscode.com/open_source/install_workstation.html>`_, and then `bootstrap your first node <http://docs.opscode.com/open_source/install_bootstrap.html>`_.

A good way to learn how to use |chef server osc| is the |learnchef| website. It contains a `series of hands-on tutorials <https://learnchef.opscode.com/>`_ that can walk you through the process of setting up a hosted server, a workstation, using the |chef repo|, and then converging your first node.


The Workstation
=====================================================
The workstation is the location from which most users will do most of their work. This work includes:

* Developing `cookbooks <http://docs.opscode.com/open_source/index.html#cookbooks>`_ and `recipes <http://docs.opscode.com/open_source/essentials_cookbook_recipes.html>`_ (and authoring them using `using Ruby <http://docs.opscode.com/open_source/just_enough_ruby_for_chef.html>`_), including `debugging recipes <http://docs.opscode.com/open_source/chef_shell.html>`_

* Synchronizing the `chef-repo <http://docs.opscode.com/open_source/essentials_repository.html>`_ with version source control like |git| or |svn|

* Using |knife| to upload items from the |chef repo| to the |chef server|
* Configuring `organizational policy <http://docs.opscode.com/open_source/essentials_policy.html>`_

* `Defining roles <http://docs.opscode.com/open_source/essentials_roles.html>`_ and `environments <http://docs.opscode.com/open_source/essentials_environments.html>`_

* Ensuring that critical data is stored in `data bags <http://docs.opscode.com/open_source/essentials_data_bags.html>`_

* Interacting with nodes, such as performing a `bootstrap operation <http://docs.opscode.com/open_source/install_bootstrap.html>`__ or running the `chef-client <http://docs.opscode.com/open_source/ctl_chef_client.html>`_ remotely

Set up a Workstation
-----------------------------------------------------
A workstation must be configured with a |chef client|, must have access to a |chef repo|, and must be able to issue |knife| commands to the |chef server| to complete certain tasks, such as uploading data to the |chef server| or issuing bootstrap commands to install the |chef client| on nodes.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_repository_create.html">Create and Sync the chef-repo</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/install_workstation.html">Set up a Workstation</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/install_bootstrap.html">Bootstrap a Node</a> </br>

Knife
-----------------------------------------------------
|knife| is a command-line tool that provides an interface between a local |chef repo| and the |chef server|. All |knife| subcommands share a set of `common options <http://docs.opscode.com/open_source/knife_common_options.html>`_ and `usage patterns <http://docs.opscode.com/open_source/knife_using.html>`_. 

The following |knife| subcommands are built-in:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_bootstrap.html">knife bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_client.html">knife client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_configure.html">knife configure</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_cookbook.html">knife cookbook</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_cookbook_site.html">knife cookbook site</a> (<a href="http://docs.opscode.com/open_source/api_cookbooks_site.html">which uses the Cookbooks Site API</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_data_bag.html">knife data bag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_delete.html">knife delete</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_deps.html">knife deps</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_diff.html">knife diff</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_download.html">knife download</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_edit.html">knife edit</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_environment.html">knife environment</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_exec.html">knife exec</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_index_rebuild.html">knife index rebuild</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_list.html">knife list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_node.html">knife node</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_raw.html">knife raw</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_recipe_list.html">knife recipe list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_role.html">knife role</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_search.html">knife search</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_show.html">knife show</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_ssh.html">knife ssh</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_ssl_check.html">knife ssl check</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_ssl_fetch.html">knife ssl fetch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_status.html">knife status</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_tag.html">knife tag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_upload.html">knife upload</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_user.html">knife user</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/knife_xargs.html">knife xargs</a> </br>

|knife| settings are stored in the `knife.rb <http://docs.opscode.com/open_source/config_rb_knife.html>`_ file. There is a default |knife rb| file and there are `optional settings <http://docs.opscode.com/open_source/config_rb_knife_optional_settings.html>`_ that can be added to the |knife rb| file.

Knife Cloud Plugins
-----------------------------------------------------
Plugins allow |knife| to interact with all of the major cloud providers. All |knife| plugins share the same set of `common options <http://docs.opscode.com/open_source/knife_common_options.html>`_ and built-in |knife| subcommands, plus |knife| plugins can make `authenticated API requests <http://docs.opscode.com/open_source/plugin_knife_authenticated_requests.html>`_ to the |chef server|.

.. include:: ../../includes_plugin_knife/includes_plugin_knife_chef_maintained_index_list.rst

A number of |knife| plugins are `built and maintained by the community <http://docs.opscode.com/open_source/community_plugin_knife.html>`_. In addition, `custom Knife plugins <http://docs.opscode.com/open_source/plugin_knife_custom.html>`_ can be created.

Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for |knife| and how it interacts with nodes and the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/config_rb_knife.html">knife.rb</a> </br>

The following command-line tools can be run on the workstation to simulate a |chef client| run locally:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ctl_chef_apply.html">chef-apply</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ctl_chef_shell.html">chef-shell</a> </br>


The Server
=====================================================
The |chef server osc| is a centralized location where all of the objects needed by |chef| are stored, including data that has been uploaded from the |chef repo|, data that is needed by the |chef client| while it configures nodes, and data that is uploaded to the |chef server| by the |chef client| at the conclusion of every |chef client| run.

Server Essentials
-----------------------------------------------------
The server acts as a hub for all of the data needed by the |chef client| while it configures a node:

* A `node object <http://docs.opscode.com/open_source/essentials_node_object.html>`_ exists for each node that is being managed by the |chef client|

* Each node object consists of a `run-list <http://docs.opscode.com/open_source/essentials_node_object_run_lists.html>`_ and a `collection of attributes <http://docs.opscode.com/open_source/essentials_node_object.html#attributes>`_
* All data that is stored on the |chef server|---including everything uploaded to the server from the |chef repo| and by the |chef client|---is `searchable <http://docs.opscode.com/open_source/essentials_search.html>`_ from both recipes (using the `search method <http://docs.opscode.com/open_source/dsl_recipe_method_search.html>`_ in the |dsl recipe|) and the workstation (using the `knife search <http://docs.opscode.com/open_source/knife_search.html>`_ subcommand)
* The |chef server| can apply `global policy settings <http://docs.opscode.com/open_source/essentials_policy.html>`_ to all nodes across the organization, including for `data bags <http://docs.opscode.com/open_source/essentials_data_bags.html>`_, `environments <http://docs.opscode.com/open_source/essentials_environments.html>`_, and `roles <http://docs.opscode.com/open_source/essentials_roles.html>`_
* The `authentication <http://docs.opscode.com/open_source/auth_authentication.html>`_ process ensures that requests can only be made to the |chef server| by authorized users
* Users, once `authorized <http://docs.opscode.com/open_source/auth_authorization.html>`_ can only perform certain actions
* The |chef server| can be `configured to use SSL <http://docs.opscode.com/open_source/server_security.html>`_
* The `user interface <http://docs.opscode.com/open_source/manage.html>`_ can be used to manage clients, cookbooks, data bags, environments, nodes, roles, and users

Server Components
-----------------------------------------------------
The |chef server osc| acts as a hub for configuration data. The `components that make up the server <http://docs.opscode.com/open_source/server_components.html>`_ work together to store cookbooks, provide a management layer, and databases that store cookbook and node data.

Install |chef server osc|
-----------------------------------------------------
The |chef server osc| can be installed with the `knife bootstrap <http://docs.opscode.com/open_source/knife_bootstrap.html>`_ subcommand from a workstation or by downloading the |chef client| to the node directly using the |api omnitruck|.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/install_server.html">Install the Open Source Chef Server</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/install_server_scenario_vm.html">Scenario: Install the Open Source Chef Server on a Virtual Machine</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/release/osc_11-0/upgrade_server_open_source.html">Upgrade to Open Source Chef Server 11.0</a> </br>

Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/config_rb_chef_server.html">chef-server.rb</a> </br>

The following command-line tools can be run on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/release/osc_11-0/ctl_chef_server.html">ctl-chef-server</a> </br>

APIs
-----------------------------------------------------
The following APIs can be used to access data on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/api_chef_server.html">Chef Server API</a> </br>


The Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

About the chef-client
-----------------------------------------------------
The |chef client| does the actual configuration on `the nodes <http://docs.opscode.com/open_source/essentials_nodes.html>`_. The |chef client| receives its instructions from cookbooks (`recipes <http://docs.opscode.com/open_source/essentials_cookbook_recipes.html>`_, mostly). The process of configuring a node is called `the chef-client run <http://docs.opscode.com/open_source/essentials_nodes_chef_run.html>`_. At the beginning of each run, the |chef client| `validates to the server <http://docs.opscode.com/open_source/essentials_chef_client.html>`_, `collects important data about that node <http://docs.opscode.com/open_source/ohai.html>`_, and then configures the node. At the end of each run, the |chef client| `reports the successes and failures that may have occurred <http://docs.opscode.com/open_source/essentials_handlers.html>`_.

Be sure to `test and debug your recipes <http://docs.opscode.com/open_source/chef_shell.html>`_before running them in production! Run the |chef client| in `why-run mode <http://docs.opscode.com/open_source/essentials_nodes_why_run.html>`_ to simulate what should happen during the |chef client| run, but without configuring anything.

Install the |chef client|
-----------------------------------------------------
The |chef client| is typically installed using a `bootstrap operation <http://docs.opscode.com/open_source/essentials_nodes_bootstrap.html>`__. This is done by running the `knife bootstrap <http://docs.opscode.com/open_source/knife_bootstrap.html>`_ subcommand from a workstation. Alternately, the |chef client| can be downloaded to a node directly using the |api omnitruck|.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/install_bootstrap.html">Install the chef-client with a bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>


Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for the |chef client|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/config_rb_client.html">client.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/config_rb_solo.html">solo.rb</a> </br>

|ohai| collects important data about every node:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ohai.html">About Ohai</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ohai_custom.html">Build Custom Ohai Plugins</a> </br>

The following command-line tools can be run on any node:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ctl_chef_client.html">chef-client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ctl_chef_solo.html">chef-solo</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/ctl_ohai.html">ohai</a> </br>


Cookbooks
=====================================================
A cookbook is the fundamental unit of configuration and policy distribution. A cookbook defines a scenario and contains all of the components that are required to support that scenario.

.. :doc:`metadata.rb </config_rb_metadata>`

Cookbook Essentials
-----------------------------------------------------
A cookbook is made up of the following components: attribute files, definitions, files, libraries, metadata, recipes, resources and providers, templates, and versions.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_attribute_files.html">Attribute Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_definitions.html">Definitions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_files.html">Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_handlers.html">Handlers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_libraries.html">Libraries</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_metadata.html">Metadata</a> (and <a href="http://docs.opscode.com/open_source/config_rb_metadata.html">/cookbook directory settings</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_recipes.html">Recipes</a> (and the <a href="http://docs.opscode.com/open_source/dsl_recipe.html">Recipe DSL</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_resources.html">Resources and Providers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_templates.html">Templates</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/essentials_cookbook_versions.html">Versions</a> </br>

Resources
-----------------------------------------------------
A `resource <http://docs.opscode.com/open_source/resource.html>`_ is a key part of a recipe that defines the actions that may be taken by the |chef client|. All resources share `common functionality <http://docs.opscode.com/open_source/resource_common.html>`_: 

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#actions">Actions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#attributes">Attributes</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#guards">Guards</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#notifications">Notifications</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#relative-paths">Relative Paths</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#windows-file-security">Windows File Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_common.html#run-from-resource-collection">Run During Resource Compilation</a> </br>

The following resources are built-in and can be used in any recipe:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_apt_package.html">apt_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_bash.html">bash</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_batch.html">batch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_breakpoint.html">breakpoint</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_chef_gem.html">chef_gem</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_chef_handler.html">chef_handler</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_cookbook_file.html">cookbook_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_cron.html">cron</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_deploy.html">deploy</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_directory.html">directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_dpkg_package.html">dpkg_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_easy_install_package.html">easy_install_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_env.html">env</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_erlang_call.html">erl_call</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_execute.html">execute</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_file.html">file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_gem_package.html">gem_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_git.html">git</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_group.html">group</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_http_request.html">http_request</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_ifconfig.html">ifconfig</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_link.html">link</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_log.html">log</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_mdadm.html">mdadm</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_mount.html">mount</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_ohai.html">ohai</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_package.html">package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_powershell_script.html">powershell_script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_registry_key.html">registry_key</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_remote_directory.html">remote_directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_remote_file.html">remote_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_route.html">route</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_rpm_package.html">rpm_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_ruby_block.html">ruby_block</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_script.html">script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_service.html">service</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_subversion.html">subversion</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_template.html">template</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_user.html">user</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_windows_package.html">windows_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/resource_yum.html">yum_package</a> </br>

LWRPs 
-----------------------------------------------------
A `LWRP <http://docs.opscode.com/open_source/lwrp.html>`_ is an extension of the |chef client| that behaves much like a platform resource, including sharing all of the common functionality available to platform resources. A |lwrp| is created by defining a lightweight resource and a lightweight provider:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/lwrp_custom.html">About custom LWRPs</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/lwrp_custom_resource.html">Create a lightweight resource</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/lwrp_custom_provider.html">Create a lightweight provider using platform resources</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/lwrp_custom_provider_ruby.html">Create a lightweight provider using Ruby</a> </br>

.. include:: ../../includes_lwrp/includes_lwrp_chef_maintained_index_list.rst

See the `opscode-cookbooks <https://github.com/opscode-cookbooks>`_ repository for the full list.

The Recipe DSL
-----------------------------------------------------
The `Recipe DSL <http://docs.opscode.com/open_source/dsl_recipe.html>`_ is used to declare resources in recipes. The |chef client| relies on recipes to know what action(s) to take as it is configuring a node. The |dsl recipe| contains the following methods:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_attribute.html">attribute?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_cookbook_name.html">cookbook_name</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_data_bag.html">data_bag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_data_bag.html">data_bag_item</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_platform.html">platform?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_platform_family.html">platform_family?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_recipe_name.html">recipe_name</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_data_exists.html">registry_data_exists?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_get_subkeys.html">registry_get_subkeys</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_get_values.html">registry_get_values</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_has_subkeys.html">registry_has_subkeys?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_key_exists.html">registry_key_exists?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_registry_value_exists.html">registry_value_exists?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_resources.html">resources</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_search.html">search</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_tag.html">tag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_tag.html">tagged?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_tag.html">untag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_value_for_platform.html">value_for_platform</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_method_value_for_platform_family.html">value_for_platform_family</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.opscode.com/open_source/dsl_recipe_helper_windows_platform.html">Microsoft Windows Platform Helpers</a> </br>


.. Hide the TOC from this file.

.. toctree::
   :hidden:

   ctl_chef_server
   upgrade_server_open_source
   