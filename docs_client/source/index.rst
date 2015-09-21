.. THIS PAGE IS LOCATED AT THE /client/ PATH.

=====================================================
All about the |chef client_title| ... 
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

View the :doc:`release notes </release_notes>` for the current version of the |chef client|.

Getting Started
=====================================================
If you are new to the |chef client|, familiarize yourself with :doc:`all of the components the chef-client will interact with </chef_overview>` as it configures your infrastructure.

Cookbooks are the fundamental unit of configuration and policy distribution. Cookbooks are authored using a programming language called |ruby|. Being an expert in |ruby| is not a requirement, but knowing some basic |ruby| will help you a lot. If you're new to |ruby|, :doc:`familiarize yourself with the basics </ruby>`.

If you want to try out |chef server osc|, use the hosted |chef server|. After you have access to a |chef server|, then :doc:`install the chef-client on a workstation </install_dk>`, and then :doc:`bootstrap your first node </install_bootstrap>`.

A good way to learn how to use |chef server osc| is the |learnchef| website. It contains a `series of hands-on tutorials <https://learn.chef.io/>`_ that can walk you through the process of setting up a hosted server, a workstation, using the |chef repo|, and then converging your first node.


The Workstation
=====================================================
The workstation is the location from which most users will do most of their work. This work includes:

* Developing `cookbooks <http://docs.chef.io/client/cookbooks.html>`_ and :doc:`recipes </recipes>` (and authoring them using :doc:`using Ruby </ruby>`), including :doc:`debugging recipes </debug>`
* Synchronizing the :doc:`chef-repo </chef_repo>` with version source control like |git| or |svn|
* Using |knife| to upload items from the |chef repo| to the |chef server|
* Interacting with nodes, such as performing a :doc:`bootstrap operation </install_bootstrap>` or running the :doc:`chef-client </ctl_chef_client>` remotely

Set up a Workstation
-----------------------------------------------------
A workstation must be configured with a |chef client|, must have access to a |chef repo|, and must be able to issue |knife| commands to the |chef server| to complete certain tasks, such as uploading data to the |chef server| or issuing bootstrap commands to install the |chef client| on nodes.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/chef_repo.html">Create and Sync the chef-repo</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/install_dk.html">Set up a Workstation</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/install_bootstrap.html">Bootstrap a Node</a> </br>

|knife_title|
-----------------------------------------------------
|knife| is a command-line tool that provides an interface between a local |chef repo| and the |chef server|. All |knife| subcommands share a set of :doc:`common options </knife_common_options>` and :doc:`usage patterns </knife_using>`. 

The following |knife| subcommands are built-in:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_bootstrap.html">knife bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_client.html">knife client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_configure.html">knife configure</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_cookbook.html">knife cookbook</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_cookbook_site.html">knife cookbook site</a> (<a href="http://docs.chef.io/client/api_cookbooks_site.html">which uses the Cookbooks Site API</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_data_bag.html">knife data bag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_delete.html">knife delete</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_deps.html">knife deps</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_diff.html">knife diff</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_download.html">knife download</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_edit.html">knife edit</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_environment.html">knife environment</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_exec.html">knife exec</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_list.html">knife list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_node.html">knife node</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_raw.html">knife raw</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_recipe_list.html">knife recipe list</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_role.html">knife role</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_search.html">knife search</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_show.html">knife show</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_ssh.html">knife ssh</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_ssl_check.html">knife ssl check</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_ssl_fetch.html">knife ssl fetch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_status.html">knife status</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_tag.html">knife tag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_upload.html">knife upload</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_user.html">knife user</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/knife_xargs.html">knife xargs</a> </br>

|knife| settings are stored in the :doc:`knife.rb </config_rb_knife>` file. There is a default |knife rb| file and there are :doc:`optional settings </config_rb_knife_optional_settings>` that can be added to the |knife rb| file.

Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for |knife| and how it interacts with nodes and the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/config_rb_knife.html">knife.rb</a> </br>

The following command-line tools can be run on the workstation to simulate a |chef client| run locally:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/ctl_chef_apply.html">chef-apply</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/ctl_chef_shell.html">chef-shell</a> </br>


The |chef server_title|
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server.rst

For more information about the |chef server| see `https://docs.chef.io/server/ <https://docs.chef.io/server/>`_.

The Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

About the |chef client_title|
-----------------------------------------------------
The |chef client| does the actual configuration on :doc:`the nodes </nodes>`. The |chef client| receives its instructions from cookbooks (:doc:`recipes </recipes>`, mostly). The process of configuring a node is called :doc:`the chef-client run </chef_client>`. At the beginning of each run, the |chef client| :doc:`validates to the server </chef_client>`, collects important data about that node, and then configures the node. At the end of each run, the |chef client| :doc:`reports the successes and failures that may have occurred </handlers>`.

Be sure to :doc:`test and debug your recipes </debug>` before running them in production! Run the |chef client| in :doc:`why-run mode </chef_client>` to simulate what should happen during the |chef client| run, but without configuring anything.

Install the |chef client_title|
-----------------------------------------------------
The |chef client| is typically installed using a :doc:`bootstrap operation </chef_client>`. This is done by running the :doc:`knife bootstrap </knife_bootstrap>` subcommand from a workstation. Alternately, the |chef client| can be downloaded to a node directly using the |api omnitruck|.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/install_bootstrap.html">Install the chef-client with a bootstrap</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>


Settings and Tools
-----------------------------------------------------
The following settings files are used to configure behavior for the |chef client|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/config_rb_client.html">client.rb</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/config_rb_solo.html">solo.rb</a> </br>


The following command-line tools can be run on any node:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/ctl_chef_client.html">chef-client</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/ctl_chef_solo.html">chef-solo</a> </br>


Cookbooks
=====================================================
A cookbook is the fundamental unit of configuration and policy distribution. A cookbook defines a scenario and contains all of the components that are required to support that scenario.

.. :doc:`metadata.rb </config_rb_metadata>`

Cookbook Essentials
-----------------------------------------------------
A cookbook is made up of the following components: attribute files, definitions, files, libraries, metadata, recipes, resources, templates, and versions.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/attributes.html">Attribute Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/definitions.html">Definitions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/files.html">Files</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/handlers.html">Handlers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/libraries.html">Libraries</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/cookbook_repo.html">Metadata</a> (and <a href="http://docs.chef.io/client/config_rb_metadata.html">/cookbook directory settings</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/recipes.html">Recipes</a> (and the <a href="http://docs.chef.io/client/dsl_recipe.html">Recipe DSL</a>)</br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resources.html">Resources</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/templates.html">Templates</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/cookbook_versions.html">Cookbook Versions</a> </br>

Resources
-----------------------------------------------------
A :doc:`resource </resource>` is a key part of a recipe that defines the actions that may be taken by the |chef client|. All resources share :doc:`common functionality </resource_common>`: 

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#actions">Actions</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#attributes">Attributes</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#guards">Guards</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#notifications">Notifications</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#relative-paths">Relative Paths</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#windows-file-security">Windows File Security</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_common.html#run-from-resource-collection">Run During Resource Compilation</a> </br>

The following resources are built-in and can be used in any recipe:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_apt_package.html">apt_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_bash.html">bash</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_batch.html">batch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_breakpoint.html">breakpoint</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_chef_gem.html">chef_gem</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_chef_handler.html">chef_handler</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_cookbook_file.html">cookbook_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_cron.html">cron</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_deploy.html">deploy</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_directory.html">directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_dpkg_package.html">dpkg_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_easy_install_package.html">easy_install_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_env.html">env</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_erlang_call.html">erl_call</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_execute.html">execute</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_file.html">file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_gem_package.html">gem_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_git.html">git</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_group.html">group</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_http_request.html">http_request</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_ifconfig.html">ifconfig</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_link.html">link</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_log.html">log</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_mdadm.html">mdadm</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_mount.html">mount</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_ohai.html">ohai</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_package.html">package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_powershell_script.html">powershell_script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_registry_key.html">registry_key</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_remote_directory.html">remote_directory</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_remote_file.html">remote_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_route.html">route</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_rpm_package.html">rpm_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_ruby_block.html">ruby_block</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_script.html">script</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_service.html">service</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_subversion.html">subversion</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_template.html">template</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_user.html">user</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_windows_package.html">windows_package</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/resource_yum.html">yum_package</a> </br>

Custom Resources 
-----------------------------------------------------
A :doc:`custom resource </custom_resources>` is an extension of the |chef client| that behaves just like a built-in resource, including sharing all of the common functionality.

The |dsl recipe|
-----------------------------------------------------
The :doc:`Recipe DSL </dsl_recipe>` is used to declare resources in recipes. The |chef client| relies on recipes to know what action(s) to take as it is configuring a node. The |dsl recipe| contains the following methods:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#attribute">attribute?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#control">control</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#control-group">control_group</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#cookbook-name">cookbook_name</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#data-bag">data_bag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#data-bag-item">data_bag_item</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe_method_platform.html">platform?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe_method_platform_family.html">platform_family?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#reboot-pending">reboot_pending?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#recipe-name">recipe_name</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#resources">resources</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#search">search</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#tag">tag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#tag">tagged?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#tag">untag</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#value-for-platform">value_for_platform</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#value-for-platform-family">value_for_platform_family</a> </br>

The following methods may be used on the |windows| platform:

.. raw:: html
   
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#windows-platform">Microsoft Windows Platform Helpers</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-data-exists">registry_data_exists?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-get-subkeys">registry_get_subkeys</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-get-values">registry_get_values</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-has-subkeys">registry_has_subkeys?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-key-exists">registry_key_exists?</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/client/dsl_recipe.html#registry-value-exists">registry_value_exists?</a> </br>


.. Hide the TOC from this file.  

.. toctree::
   :hidden:

   api_omnitruck
   attributes
   chef_overview
   chef_client
   chef_repo
   chef_search
   chef_solo
   config_rb_client
   config_rb_knife
   config_rb_knife_optional_settings
   config_rb_metadata
   config_rb_solo
   cookbook_repo
   cookbook_versions
   cookbooks
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_shell
   ctl_chef_solo
   custom_resources
   debug
   definitions
   dsl_recipe
   files
   handlers
   install_bootstrap
   install_dk
   install_windows
   knife
   knife_common_options
   knife_bootstrap
   knife_client
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
   knife_serve
   knife_show
   knife_ssh
   knife_ssl_check
   knife_ssl_fetch
   knife_status
   knife_tag
   knife_upload
   knife_user
   knife_using
   knife_xargs
   libraries
   nodes
   recipes
   release_notes
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
   resource_dsc_resource
   resource_dsc_script
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
   resource_route
   resource_rpm_package
   resource_ruby
   resource_ruby_block
   resource_script
   resource_service
   resource_smartos_package
   resource_solaris_package
   resource_subversion
   resource_template
   resource_user
   resource_windows_package
   resource_windows_service
   resource_yum
   resources
   ruby
   server_components
   templates
   workstation