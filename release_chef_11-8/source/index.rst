=====================================================
Documentation for Chef 11.8.x 
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

View the :doc:`release notes </release_notes>` for Chef 11.8.x.

Getting Started
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>` | :doc:`Why Chef? </chef_why>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Attributes </chef_overview_attributes>` | :doc:`Resources and Providers </resource>` | :doc:`LWRPs (Custom Resources) </lwrp_custom>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

**Try it out:** (1) `Sign up for Hosted Enterprise Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) or `Install Enterprise Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**), then (2) :doc:`Install the chef-client on a Workstation </install_workstation>`, (3) and then :doc:`Bootstrap a Node </install_bootstrap>`

**learnchef.opscode.com:**  `Install a Workstation <https://learnchef.opscode.com/quickstart/workstation-setup/>`_ | `Use the chef-repo <https://learnchef.opscode.com/quickstart/chef-repo/>`_ | `Converge a Node <https://learnchef.opscode.com/quickstart/converge/>`_


The Community
=====================================================
The community is one of the best features of |chef| because it is populated by all of the people who use |chef|. This also means that the community is a great place to bounce ideas around, ask questions, and to find ways to help make |chef| better.

**Workflow:**  `Berkshelf <http://berkshelf.com/>`_ | `Librarian <https://github.com/applicationsonline/librarian>`_ | `Spiceweasel <https://github.com/mattray/spiceweasel>`_

**Development tools:**  `test-kitchen <https://github.com/test-kitchen/test-kitchen>`_ | `Food Critic <http://acrmp.github.com/foodcritic/>`_ | `cucumber-chef <http://www.cucumber-chef.org/>`_ | `chef-workflow <https://github.com/chef-workflow>`_ | `chefspec <https://github.com/acrmp/chefspec>`_ | `yard-chef <https://rubygems.org/gems/yard-chef/>`_ | `Cookbooks <http://community.opscode.com/cookbooks>`_ | `Jenkins Plugin <https://github.com/melezhik/chef-plugin/>`_ | `chef-zero <https://github.com/opscode/chef-zero>`_

**Discussion:** :doc:`Guidelines </community_guidelines>` | :doc:`lists.opscode.com </community_lists>` | `Food Fight Show <http://foodfightshow.org/>`_ --- **Chat channels:** `chef <http://community.opscode.com/chat/chef>`_ | `chef-hacking <http://community.opscode.com/chat/chef-hacking>`_ | `openstack-chef <http://community.opscode.com/chat/openstack-chef>`_

**Books about Chef:** `Test-Driven Infrastructure with Chef, 2nd Edition <http://shop.oreilly.com/product/0636920030973.do>`_ | `Instant Chef Starter <http://www.packtpub.com/chef-starter/book>`_ | `Chef Infrastructure Automation Cookbook <http://www.packtpub.com/chef-infrastructure-automation-cookbook/book>`_ | `Chef Survival Guide <https://leanpub.com/chef-survival-guide>`_

**Plugins:** :doc:`Chef </community_plugin_chef>` | :doc:`Knife </community_plugin_knife>` | :doc:`Ohai </community_plugin_ohai>` | :doc:`Report handlers </community_plugin_report_handler>` | `Ridley <https://github.com/reset/ridley>`_

.. **Chef for OpenStack:** :doc:`Overview </openstack>` | :doc:`knife-openstack </plugin_knife_openstack>`

**Contributions:** `Contribute to Open Source Chef <http://docs.opscode.com/community_contributions.html>`_ | `Contribute to the Documentation <https://github.com/opscode/chef-docs>`_ | `Style Guide <http://docs.opscode.com/style_guide.html>`_

The Workstation
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The chef-repo </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the chef-repo </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`deps </knife_deps>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`edit </knife_edit>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` | :doc:`xargs </knife_xargs>`

**Plugins:** :doc:`About Plugins </plugin_knife>` | :doc:`Custom Plugins </plugin_knife_custom>` | :doc:`Authenticated Requests </plugin_knife_authenticated_requests>`

**Settings:** :doc:`knife.rb </config_rb_knife>` | :doc:`metadata.rb </config_rb_metadata>`

**Tools:** :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-apply (executable) </ctl_chef_apply>`


The Server
=====================================================
The |chef server| is a centralized location where all of the objects needed by |chef| are stored, including data that has been uploaded from the |chef repo|, data that is needed by the |chef client| while it configures nodes, and data that is uploaded to the |chef server| by the |chef client| at the conclusion of every |chef client| run.

Server Essentials
-----------------------------------------------------
The server acts as a hub for all of the data needed by the |chef client| while it configures a node:

* A :doc:`node object </essentials_node_object>` exists for each node that is being managed by the |chef client|
* Each node object consists of a :doc:`run-list </essentials_node_object_run_lists>` and a `collection of attributes <http://docs.opscode.com/essentials_node_object.html#attributes>`_.
* All data that is stored on the |chef server|---including everything uploaded to the server from the |chef repo| and by the |chef client|---is :doc:`searchable </essentials_search>` from both recipes (using the :doc:`search method </dsl_recipe_method_search>` in the |dsl recipe|) and the workstation (using the :doc:`knife search </knife_search>` subcommand)
* The |chef server| can apply :doc:`global policy settings </essentials_policy>` to all nodes across the organization, including for :doc:`data bags </essentials_data_bags>`, :doc:`environments </essentials_environments>`, and :doc:`roles </essentials_roles>`.
* The :doc:`authentication </auth_authentication>` process ensures that requests can only be made to the |chef server| by authorized users
* Users, once :doc:`authorized </auth_authorization>` can only perform certain actions.
* The :doc:`Chef Server API </api_chef_server>` can be used to access objects on the |chef server|

|chef server oec|
-----------------------------------------------------
|chef server oec| is a |chef server| that can be deployed behind the firewall or be accessed from the hosted platform. |chef server oec| includes all of the core functionality included in the |chef server osc| version, but includes additional functionality like |reporting| and built-in support for high availability deployment scenarios. For more information about |chef server oec|, see http://docs.opscode.com/enterprise/.

|chef server osc|
-----------------------------------------------------
|chef server osc| is the open source |chef server| that shares many of the same capabilities as the |chef server oec|. For more information about |chef server oec|, see http://docs.opscode.com/open_source/.


The Nodes
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The chef-client Run </essentials_nodes_chef_run>` | :doc:`Chef Solo </chef_solo>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Install the chef-client on Windows </install_windows>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Ohai:** `About Ohai 7 <http://docs.opscode.com/ohai.html>`_ | `Custom Ohai 7 Plugins <http://docs.opscode.com/ohai_custom.html>`_ | `Ohai 6 <http://docs.opscode.com/release/ohai-6/>`_

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Command-line Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` |  :doc:`Handlers </handlers>` | `Popular Cookbooks <https://github.com/opscode-cookbooks>`_

**LWRPs:** :doc:`About Custom LWRPs </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` | :doc:`Windows Platform Helper Methods </dsl_recipe_helper_windows_platform>` --- **Single Page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_

**Resources:** :doc:`About Resources </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`batch </resource_batch>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`chef_handler </resource_chef_handler>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>` --- **Single Page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_



.. Hide the TOC from this file.

.. toctree::
   :hidden:

   api_chef_server
   api_omnitruck
   auth
   auth_authentication
   auth_authorization
   chef_client
   chef_overview
   chef_overview_attributes
   chef_overview_cookbooks
   chef_overview_nodes
   chef_overview_server
   chef_overview_server_hosted
   chef_overview_server_open_source
   chef_overview_server_private
   chef_overview_workstation
   chef_private_keys
   chef_quick_overview
   chef_shell
   chef_solo
   chef_why
   community
   community_contributions
   community_guidelines
   community_lists
   community_plugin_chef
   community_plugin_knife
   community_plugin_ohai
   community_plugin_report_handler
   config_rb_client
   config_rb_knife
   config_rb_knife_optional_settings
   config_rb_metadata
   config_rb_solo
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_shell
   ctl_chef_solo
   dsl_recipe
   dsl_recipe_helper_windows_platform
   dsl_recipe_method_attribute
   dsl_recipe_method_cookbook_name
   dsl_recipe_method_data_bag
   dsl_recipe_method_platform
   dsl_recipe_method_platform_family
   dsl_recipe_method_recipe_name
   dsl_recipe_method_registry_data_exists
   dsl_recipe_method_registry_get_subkeys
   dsl_recipe_method_registry_get_values
   dsl_recipe_method_registry_has_subkeys
   dsl_recipe_method_registry_key_exists
   dsl_recipe_method_registry_value_exists
   dsl_recipe_method_resources
   dsl_recipe_method_search
   dsl_recipe_method_tag
   dsl_recipe_method_value_for_platform
   dsl_recipe_method_value_for_platform_family
   essentials_chef_client
   essentials_cookbook_attribute_files
   essentials_cookbook_directory
   essentials_cookbook_definitions
   essentials_cookbook_files
   essentials_cookbook_libraries
   essentials_cookbook_metadata
   essentials_cookbook_recipes
   essentials_cookbook_resources
   essentials_cookbook_templates
   essentials_cookbook_versions
   essentials_cookbooks
   essentials_data_bags
   essentials_environment_variables
   essentials_environments
   essentials_handlers
   essentials_knife
   essentials_nodes
   essentials_nodes_chef_run
   essentials_nodes_why_run
   essentials_node_object
   essentials_node_object_deep_merge
   essentials_node_object_run_lists
   essentials_policy
   essentials_repository
   essentials_repository_create
   essentials_roles
   essentials_search
   handlers
   install
   install_bootstrap
   install_omnibus
   install_windows
   install_workstation
   just_enough_ruby_for_chef
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
   knife_index_rebuild
   knife_list
   knife_node
   knife_raw
   knife_recipe_list
   knife_role
   knife_search
   knife_show
   knife_ssh
   knife_status
   knife_tag
   knife_upload
   knife_user
   knife_using
   knife_xargs
   lwrp
   lwrp_custom
   lwrp_custom_provider
   lwrp_custom_provider_ruby
   lwrp_custom_resource
   lwrp_custom_resource_library
   migrate_to_hosted
   plugin_knife
   plugin_knife_authenticated_requests
   plugin_knife_custom
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
   resource_easy_install_package
   resource_env
   resource_erlang_call
   resource_examples
   resource_execute
   resource_file
   resource_freebsd_package
   resource_gem_package
   resource_git
   resource_group
   resource_http_request
   resource_ifconfig
   resource_ips_package
   resource_link
   resource_log
   resource_macports_package
   resource_mdadm
   resource_mount
   resource_ohai
   resource_package
   resource_pacman_package
   resource_perl
   resource_portage_package
   resource_powershell_script
   resource_python
   resource_registry_key
   resource_remote_directory
   resource_remote_file
   resource_route
   resource_rpm_package
   resource_ruby
   resource_ruby_block
   resource_scm
   resource_script
   resource_service
   resource_smartos_package
   resource_solaris_package
   resource_subversion
   resource_template
   resource_user
   resource_yum

