=====================================================
All about |chef server oec| ... 
=====================================================

.. include:: ../../includes_chef/includes_chef_11_index_oec.rst


Getting Started
=====================================================
If you are new to |chef server oec|, familiarize yourself with its main components: :doc:`the server, workstations, and nodes </oec_overview>`.

Cookbooks are the fundamental unit of configuration and policy distribution. They are authored using |ruby|, which is a programming language with a simple, easy to follow syntax. Being an expert in |ruby| programming is not a requirement for authoring cookbooks because most of the structures found in cookbooks are just patterns; knowing :doc:`some basic Ruby </just_enough_ruby_for_chef>` will help a lot.

If you want to try out |chef server oec|, you can use the hosted |chef server|. First, `sign up for hosted Enterprise Chef <https://manage.opscode.com/signup>`_, then :doc:`install the chef-client on a workstation </install_workstation>`, and then :doc:`bootstrap your first node </install_bootstrap>`.

Another way to learn how to use |chef server oec| is the |learnchef| website. It contains a `series of hands-on tutorials <https://learn.chef.io/>`_ that can walk you through the process of setting up a hosted server, a workstation, using the |chef repo|, and then converging your first node.


The Workstation
=====================================================
The workstation is the location from which most users will do most of their work. This work includes:

* Developing `cookbooks <http://docs.chef.io/enterprise/index.html#cookbooks>`_ and :doc:`recipes </essentials_cookbook_recipes>` (and authoring them using :doc:`using Ruby </just_enough_ruby_for_chef>`), including :doc:`debugging recipes </chef_shell>`
* Synchronizing the :doc:`chef-repo </essentials_repository>` with version source control like |git| or |svn|
* Using |knife| to upload items from the |chef repo| to the |chef server|
* Configuring :doc:`organizational policy </essentials_policy>`
* :doc:`Defining roles </essentials_roles>` and :doc:`environments </essentials_environments>`
* Ensuring that critical data is stored in :doc:`data bags </essentials_data_bags>`
* Interacting with nodes, such as performing a :doc:`bootstrap operation </install_bootstrap>` or running the :doc:`chef-client </ctl_chef_client>` remotely

Set up a Workstation
-----------------------------------------------------
A workstation must be configured with a |chef client|, must have access to a |chef repo|, and must be able to issue |knife| commands to the |chef server| to complete certain tasks, such as uploading data to the |chef server| or issuing bootstrap commands to install the |chef client| on nodes.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_repository_create.html">Create and Sync the chef-repo</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_workstation.html">Set up a Workstation</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_bootstrap.html">Bootstrap a Node</a> </br>

|knife|
-----------------------------------------------------
|knife| is a command-line tool that provides an interface between a local |chef repo| and the |chef server|. All |knife| subcommands share a set of :doc:`common options </knife_common_options>` and :doc:`usage patterns </knife_using>`. 

The following |knife| subcommands are built-in:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_bootstrap.html">knife bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_client.html">knife client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_configure.html">knife configure</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_cookbook.html">knife cookbook</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_cookbook_site.html">knife cookbook site</a> (which uses the <a href="http://docs.chef.io/enterprise/api_cookbooks_site.html">Cookbooks Site API</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_data_bag.html">knife data bag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_delete.html">knife delete</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_deps.html">knife deps</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_diff.html">knife diff</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_download.html">knife download</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_edit.html">knife edit</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_environment.html">knife environment</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_exec.html">knife exec</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_list.html">knife list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_node.html">knife node</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_raw.html">knife raw</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_recipe_list.html">knife recipe list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_role.html">knife role</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_search.html">knife search</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_show.html">knife show</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_ssh.html">knife ssh</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_ssl_check.html">knife ssl check</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_ssl_fetch.html">knife ssl fetch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_status.html">knife status</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_tag.html">knife tag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_upload.html">knife upload</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/knife_xargs.html">knife xargs</a> </br>

|knife| settings are stored in the :doc:`knife.rb </config_rb_knife>` file. There is a default |knife rb| file and there are :doc:`optional settings </config_rb_knife_optional_settings>` that can be added to the |knife rb| file.

|knife| Cloud Plugins
-----------------------------------------------------
Plugins allow |knife| to interact with all of the major cloud providers. All |knife| plugins share the same set of :doc:`common options </knife_common_options>` and built-in |knife| subcommands, plus |knife| plugins can make :doc:`authenticated API requests </plugin_knife_authenticated_requests>` to the |chef server|.

.. include:: ../../includes_plugin_knife/includes_plugin_knife_chef_maintained_index_list.rst

..   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/plugin_knife_push_jobs.html">knife push jobs</a> </br>

A number of |knife| plugins are `built and maintained by the community <http://docs.chef.io/enterprise/community_plugin_knife.html>`_. In addition, `custom Knife plugins <http://docs.chef.io/enterprise/plugin_knife_custom.html>`_ can be created.

Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for |knife| and how it interacts with nodes and the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_knife.html">knife.rb</a> </br>

The following command-line tools can be run on the workstation to simulate a |chef client| run locally:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_chef_apply.html">chef-apply</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_chef_shell.html">chef-shell</a> </br>


The Server
=====================================================
The |chef server oec| server is a centralized location where all of the objects needed by |chef| are stored, including data that has been uploaded from the |chef repo|, data that is needed by the |chef client| while it configures nodes, and data that is uploaded to the |chef server| by the |chef client| at the conclusion of every |chef client| run.

.. **The basics:** :doc:`About the Chef Server </chef_overview_server>` | :doc:`Server Components </server_components>` | :doc:`Hosted Chef </chef_overview_server_hosted>` vs. :doc:`Private Chef </chef_overview_server_private>` vs. :doc:`Open Source Chef </chef_overview_server_open_source>` | :doc:`Authentication and Authorization </auth>` | :doc:`Private Keys </chef_private_keys>`

.. **Install:** `Sign up for Hosted Chef <http://www.chef.io/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) | `Sign up for Private Chef <http://www.chef.io/private-chef/?utm_source=docs>`_ (click **Get Chef**) | :doc:`Install the Chef Server </install_server>` | :doc:`Download with Omnitruck API </api_omnitruck>`


Server Essentials
-----------------------------------------------------
The server acts as a hub for all of the data needed by the |chef client| while it configures a node:

* A :doc:`node object </essentials_node_object>` exists for each node that is being managed by the |chef client|
* Each node object consists of a :doc:`run-list </essentials_node_object_run_lists>` and a `collection of attributes <http://docs.chef.io/enterprise/essentials_node_object.html#attributes>`_. 
* All data that is stored on the |chef server|---including everything uploaded to the server from the |chef repo| and by the |chef client|---is :doc:`searchable </essentials_search>` from both recipes (using the `search method <http://docs.chef.io/enterprise/dsl_recipe.html#search>`_ in the |dsl recipe|) and the workstation (using the :doc:`knife search </knife_search>` subcommand)
* The |chef server| can apply :doc:`global policy settings </essentials_policy>` to all nodes across the organization, including for :doc:`data bags </essentials_data_bags>`, :doc:`environments </essentials_environments>`, and :doc:`roles </essentials_roles>`.
* The :doc:`authentication </auth_authentication>` process ensures that requests can only be made to the |chef server| by authorized users
* Users, once :doc:`authorized </auth_authorization>` can only perform certain actions.

Server Components
-----------------------------------------------------
The |chef server oec| server acts as a hub for configuration data. The :doc:`components that make up the server </server_components>` work together to store cookbooks, provide a management layer, and databases that store cookbook and node data.

In addition to the built-in features of |chef server oec|, the following optional components are available:

* **Chef Manager** :doc:`Chef Manage </manage>` provides a web user interface that can be used to manage |chef server oec|.
* **Reporting** :doc:`Reporting </reporting>` is used to get a list of |chef client| runs, either by organization or by node.
* **Push Jobs** :doc:`Push Jobs </push_jobs>` is used to run jobs against nodes independently of |chef client| runs.

Deployment Scenarios
-----------------------------------------------------
.. include:: ../../includes_server_deploy/includes_server_deploy.rst

The following sections discuss these deployment configuration options in greater detail:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_deploy_standalone.html">Standalone</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_deploy_be.html">Scaled Back End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_deploy_fe.html">Scaled Front End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_deploy_febe.html">Scaled Front and Back Ends</a> </br>

.. note:: For more information about signing up for hosted |chef server oec|, see https://getchef.chef.io/signup.

Install |chef server oec|
-----------------------------------------------------
The |chef server oec| server can be installed via download:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server.html">Install the Enterprise Chef Server</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>

Installation scenarios:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_pre.html">Prerequisites</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_standalone.html">Standalone</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_be.html">Scaled Back End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_fe.html">Scaled Front End</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_febe.html">Scaled Front and Back Ends</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/upgrade_server_standalone.html">Upgrade for Standalone</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/upgrade_server_ha.html">Upgrade for High Availability</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/migrate_to_enterprise.html">Migrate to Enterprise Chef from Open Source Chef</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_reporting.html">Install Chef Reporting</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_manage.html">Install Chef Manager</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_analytics.html">Install Chef Analytics</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_push_jobs.html">Install Push Jobs</a> </br>

Options: 

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_ldap.html">Active Directory / LDAP</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_users.html">Create Users</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_server_orgs.html">Create Organizations</a> </br>

Manage |chef server oec|
-----------------------------------------------------
The |chef server| can be managed in the following ways:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_backup_restore.html">Backup and Restore</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_firewalls_and_ports.html">Firewalls and Ports</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_high_availability.html">High Availability</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_ldap.html">LDAP / Active Directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_logs.html">Logs</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_monitor.html">Monitor</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_tuning.html">Server Tuning</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_security.html">Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_services.html">Services</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_users.html">Users</a> </br>

The |chef manage| add-on for |chef server oec| provides a user interface that enables the management of objects on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_clients.html">Clients</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_cookbooks.html">Cookbooks</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_data_bags.html">Data Bags</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_environments.html">Environments</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_nodes.html">Nodes</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_orgs.html">Organizations, Groups, and Users</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_reports.html">Reports</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/server_manage_roles.html">Roles</a> </br>

Settings and Tools 
-----------------------------------------------------
The following settings files are used to configure behavior for the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_chef_server_enterprise.html">private-chef.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_push_jobs_server.html">push-jobs-server.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_manage.html">manage.rb</a> </br>

The following command-line tools can be run on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_private_chef.html">private-chef-ctl</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_push_jobs_client.html">push_jobs-client</a> </br>

..   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/orgmapper.html">orgmapper</a> </br>

APIs
-----------------------------------------------------
The following APIs can be used to access data on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/api_chef_server.html">Chef Server API</a> </br>

..   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/api_push_jobs.html">Push Jobs API</a> </br>



The Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

About the chef-client
-----------------------------------------------------
The |chef client| does the actual configuration on :doc:`the nodes </essentials_nodes>`. The |chef client| receives its instructions from cookbooks (:doc:`recipes </essentials_cookbook_recipes>`, mostly). The process of configuring a node is called :doc:`the chef-client run </essentials_nodes_chef_run>`. At the beginning of each run, the |chef client| :doc:`validates to the server </essentials_chef_client>`, :doc:`collects important data about that node </ohai>`, and then configures the node. At the end of each run, the |chef client| :doc:`reports the successes and failures that may have occurred </essentials_handlers>`.

Be sure to :doc:`test and debug your recipes </chef_shell>` before running them in production! Run the |chef client| in :doc:`why-run mode </essentials_nodes_why_run>` to simulate what should happen during the |chef client| run, but without configuring anything.


Install the |chef client|
-----------------------------------------------------
The |chef client| is typically installed using a :doc:`bootstrap operation </essentials_nodes_bootstrap>`. This is done by running the :doc:`knife bootstrap </knife_bootstrap>` subcommand from a workstation. Alternately, the |chef client| can be downloaded to a node directly using the |api omnitruck|.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_bootstrap.html">Install the chef-client with a bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/install_windows.html">Install the chef-client on a machine running Microsoft Windows</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>

Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for the |chef client|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_client.html">client.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/config_rb_solo.html">solo.rb</a> </br>

|ohai| collects important data about every node:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ohai.html">About Ohai</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ohai_custom.html">Build Custom Ohai Plugins</a> </br>

The following command-line tools can be run on any node:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_chef_client.html">chef-client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_chef_solo.html">chef-solo</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/ctl_ohai.html">ohai</a> </br>


Cookbooks
=====================================================
A cookbook is the fundamental unit of configuration and policy distribution. A cookbook defines a scenario and contains all of the components that are required to support that scenario.

.. :doc:`metadata.rb </config_rb_metadata>`

Cookbook Essentials
-----------------------------------------------------
A cookbook is made up of the following components: attribute files, definitions, files, libraries, metadata, recipes, resources and providers, templates, and versions.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_attribute_files.html">Attribute Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_definitions.html">Definitions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_files.html">Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_handlers.html">Handlers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_libraries.html">Libraries</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_metadata.html">Metadata</a> (and <a href="http://docs.chef.io/enterprise/config_rb_metadata.html">/cookbook directory settings</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_recipes.html">Recipes</a> (and the <a href="http://docs.chef.io/enterprise/dsl_recipe.html">Recipe DSL</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_resources.html">Resources and Providers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_templates.html">Templates</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/essentials_cookbook_versions.html">Versions</a> </br>

Resources
-----------------------------------------------------
A :doc:`resource </resource>` is a key part of a recipe that defines the actions that may be taken by the |chef client|. All resources share :doc:`common functionality </resource_common>`: 

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#actions">Actions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#attributes">Attributes</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#guards">Guards</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#notifications">Notifications</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#relative-paths">Relative Paths</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#windows-file-security">Windows File Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_common.html#run-from-resource-collection">Run During Resource Compilation</a> </br>

The following resources are built-in and can be used in any recipe:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_apt_package.html">apt_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_bash.html">bash</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_batch.html">batch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_breakpoint.html">breakpoint</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_chef_gem.html">chef_gem</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_chef_handler.html">chef_handler</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_cookbook_file.html">cookbook_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_cron.html">cron</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_deploy.html">deploy</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_directory.html">directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_dpkg_package.html">dpkg_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_easy_install_package.html">easy_install_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_env.html">env</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_erlang_call.html">erl_call</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_execute.html">execute</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_file.html">file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_gem_package.html">gem_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_git.html">git</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_group.html">group</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_http_request.html">http_request</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_ifconfig.html">ifconfig</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_link.html">link</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_log.html">log</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_mdadm.html">mdadm</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_mount.html">mount</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_ohai.html">ohai</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_package.html">package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_powershell_script.html">powershell_script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_registry_key.html">registry_key</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_remote_directory.html">remote_directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_remote_file.html">remote_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_route.html">route</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_rpm_package.html">rpm_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_ruby_block.html">ruby_block</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_script.html">script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_service.html">service</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_subversion.html">subversion</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_template.html">template</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_user.html">user</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_windows_package.html">windows_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/resource_yum.html">yum_package</a> </br>

LWRPs
-----------------------------------------------------
A :doc:`LWRP </lwrp>` is an extension of the |chef client| that behaves much like a platform resource, including sharing all of the common functionality available to platform resources. A |lwrp| is created by defining a lightweight resource and a lightweight provider:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/lwrp_custom.html">About custom LWRPs</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/lwrp_custom_resource.html">Create a lightweight resource</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/lwrp_custom_provider.html">Create a lightweight provider using platform resources</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/enterprise/lwrp_custom_provider_ruby.html">Create a lightweight provider using Ruby</a> </br>

.. include:: ../../includes_lwrp/includes_lwrp_chef_maintained_index_list.rst

See the `chef-cookbooks <https://github.com/chef-cookbooks>`_ repository for the full list.

The Recipe DSL
-----------------------------------------------------
The :doc:`Recipe DSL </dsl_recipe>` is used to declare resources in recipes. The |chef client| relies on recipes to know what action(s) to take as it is configuring a node.


.. Hide the TOC from this file.

.. toctree::
   :hidden:

   api_chef_server
   api_cookbooks_site
   api_omnitruck.rst
   api_push_jobs
   auth_authentication
   auth_authorization
   chef_shell
   community_plugin_knife
   config_rb_chef_server_enterprise
   config_rb_chef_server_enterprise_optional_settings
   config_rb_client
   config_rb_knife
   config_rb_knife_optional_settings
   config_rb_manage
   config_rb_metadata
   config_rb_push_jobs_server
   config_rb_solo
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_shell
   ctl_chef_solo
   ctl_ohai
   ctl_reporting 
   ctl_private_chef
   ctl_push_jobs_client
   dsl_recipe
   essentials_chef_client
   essentials_cookbook_attribute_files
   essentials_cookbook_definitions
   essentials_cookbook_files
   essentials_cookbook_libraries
   essentials_cookbook_metadata
   essentials_cookbook_recipes
   essentials_cookbook_resources
   essentials_cookbook_templates
   essentials_cookbook_versions
   essentials_data_bags
   essentials_environments
   essentials_handlers
   essentials_node_object
   essentials_node_object_run_lists
   essentials_nodes
   essentials_nodes_bootstrap
   essentials_nodes_chef_run
   essentials_nodes_why_run
   essentials_policy
   essentials_repository
   essentials_repository_create
   essentials_roles
   essentials_search
   install
   install_analytics
   install_bootstrap
   install_manage
   install_push_jobs
   install_reporting
   install_server
   install_server_be
   install_server_fe
   install_server_hosted
   install_server_ldap
   install_server_orgs
   install_server_pre
   install_server_standalone
   install_server_users
   install_windows
   install_workstation
   just_enough_ruby_for_chef
   knife_bootstrap
   knife_client
   knife_common_options
   knife_configure
   knife_cookbook
   knife_cookbook_site
   knife_data_bag
   knife_delete
   knife_deps
   knife_diff
   knife_download
   knife_edit
   knife_environment
   knife_exec
   knife_list
   knife_node
   knife_raw
   knife_recipe_list
   knife_role
   knife_search
   knife_show
   knife_ssh
   knife_ssl_check
   knife_ssl_fetch
   knife_status
   knife_tag
   knife_upload
   knife_using
   knife_xargs
   lwrp
   lwrp_custom
   lwrp_custom_provider_ruby
   lwrp_custom_provider
   lwrp_custom_resource
   lwrp_custom_resource_library
   manage
   migrate_to_enterprise
   oec_overview
   ohai
   ohai_custom
   orgmapper
   plugin_knife_authenticated_requests
   plugin_knife_azure
   plugin_knife_bluebox
   plugin_knife_bluelock
   plugin_knife_custom
   plugin_knife_ec2
   plugin_knife_eucalyptus
   plugin_knife_google
   plugin_knife_hp
   plugin_knife_linode
   plugin_knife_openstack
   plugin_knife_push_jobs
   plugin_knife_rackspace
   plugin_knife_reporting
   plugin_knife_terremark
   plugin_knife_vcloud
   plugin_knife_windows
   push_jobs
   reporting
   resource
   resource_apt_package
   resource_bash
   resource_batch
   resource_bff_package
   resource_breakpoint
   resource_chef_gem
   resource_chef_handler
   resource_common
   resource_cookbook_file
   resource_cron
   resource_csh
   resource_deploy
   resource_directory
   resource_dpkg_package
   resource_easy_install_package
   resource_env
   resource_erlang_call
   resource_execute
   resource_file
   resource_freebsd_package
   resource_gem_package
   resource_git
   resource_group
   resource_homebrew_package
   resource_http_request
   resource_ifconfig
   resource_ips_package
   resource_link
   resource_log
   resource_macports_package
   resource_mdadm
   resource_mount
   resource_ohai
   resource_openbsd_package
   resource_package
   resource_pacman_package
   resource_paludis_package
   resource_perl
   resource_portage_package
   resource_powershell_script
   resource_python
   resource_reboot
   resource_registry_key
   resource_remote_directory
   resource_remote_file
   resource_rpm_package
   resource_route
   resource_ruby
   resource_ruby_block
   resource_smartos_package
   resource_solaris_package
   resource_subversion
   resource_script
   resource_service
   resource_template
   resource_user
   resource_windows_package
   resource_windows_service
   resource_yum
   server_backup_restore
   server_components
   server_deploy_be
   server_deploy_fe
   server_deploy_febe
   server_deploy_standalone
   server_firewalls_and_ports
   server_high_availability
   server_ldap
   server_logs
   server_manage_clients
   server_manage_cookbooks
   server_manage_data_bags
   server_manage_environments
   server_manage_nodes
   server_manage_reports
   server_manage_roles
   server_monitor
   server_orgs
   server_security
   server_services
   server_tuning
   server_users
   upgrade_server_ha
   upgrade_server_ha_notes
   upgrade_server_standalone
   upgrade_server_standalone_notes