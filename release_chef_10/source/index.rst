=====================================================
Documentation for chef-client 10 (current)
=====================================================

.. warning:: This document collection is only about the current version 10 chef-client. At present, this content is undergoing significant updates and may not accurately reflect the state of the current version 10 chef-client. This warning will be removed when the content does accurately reflect the state of the version 10 chef-client. For information about the current version of the chef-client 11, see docs.opscode.com. For information about the Chef 11 servers, see docs.opscode.com/open_source or docs.opscode.com/enterprise.

.. include:: ../../includes_chef/includes_chef_index.rst


Getting Started 
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>` | :doc:`Why Chef? </chef_why>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Attributes </chef_overview_attributes>` | :doc:`Resources and Providers </resource>` | :doc:`LWRPs </lwrp_custom>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

**Try it out:** (1) `Sign up for Hosted Enterprise Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) or `Install Enterprise Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**), then (2) :doc:`Install the chef-client on a Workstation </install_workstation>`, (3) and then :doc:`Bootstrap a Node </install_bootstrap>`

**learnchef.opscode.com:**  `Install a Workstation <https://learnchef.opscode.com/quickstart/workstation-setup/>`_ | `Use the chef-repo <https://learnchef.opscode.com/quickstart/chef-repo/>`_ | `Converge a Node <https://learnchef.opscode.com/quickstart/converge/>`_

**What's new:** :doc:`Release Notes for Chef 10-latest </release_notes>`



The Community 
=====================================================
The community is one of the best features of |chef| because it is populated by all of the people who use |chef|. This also means that the community is a great place to bounce ideas around, ask questions, and to find ways to help make |chef| better.

**Workflow:**  `Berkshelf <http://berkshelf.com/>`_ | `Librarian <https://github.com/applicationsonline/librarian>`_ | `Spiceweasel <https://github.com/mattray/spiceweasel>`_

**Development tools:**  `test-kitchen <https://github.com/opscode/test-kitchen>`_ | `Food Critic <http://acrmp.github.com/foodcritic/>`_ | `cucumber-chef <http://www.cucumber-chef.org/>`_ | `chef-workflow <https://github.com/chef-workflow>`_ | `chefspec <https://github.com/acrmp/chefspec>`_ | `yard-chef <https://rubygems.org/gems/yard-chef/>`_ | `Cookbooks <http://community.opscode.com/cookbooks>`_ | `Jenkins Plugin <https://github.com/melezhik/chef-plugin/>`_

**Discussion:** :doc:`Guidelines </community_guidelines>` | :doc:`lists.opscode.com </community_lists>` | `Food Fight Show <http://foodfightshow.org/>`_ --- **Chat channels:** `chef <http://community.opscode.com/chat/chef>`_ | `chef-hacking <http://community.opscode.com/chat/chef-hacking>`_ | `openstack-chef <http://community.opscode.com/chat/openstack-chef>`_

**Books about Chef:** `Test-Driven Infrastructure with Chef, 2nd Edition <http://shop.oreilly.com/product/0636920030973.do>`_ | `Instant Chef Starter <http://www.packtpub.com/chef-starter/book>`_ | `Chef Infrastructure Automation Cookbook <http://www.packtpub.com/chef-infrastructure-automation-cookbook/book>`_ | `Chef Survival Guide <https://leanpub.com/chef-survival-guide>`_

**Plugins:** :doc:`Chef </community_plugin_chef>` | :doc:`Knife </community_plugin_knife>` | :doc:`Ohai </community_plugin_ohai>` | :doc:`Report handlers </community_plugin_report_handler>` | `Ridley <https://github.com/reset/ridley>`_

**Contributions:** `Contribute to Open Source Chef <http://docs.opscode.com/community_contributions.html>`_ | `Contribute to the Documentation <https://github.com/opscode/chef-docs>`_

The Workstation  
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The chef-repo </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the chef-repo </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`node </knife_node>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`About Plugins </plugin_knife>` and :doc:`Authenticated Requests by Plugins </plugin_knife_authenticated_requests>`

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

|chef server oec| 
-----------------------------------------------------
|chef server oec| is a |chef server| that can be deployed behind the firewall or be accessed from the hosted platform. |chef server oec| includes all of the core functionality included in the |chef server osc| version, but includes support for high availability deployment scenarios. For more information about |chef server oec|, see docs.opscode.com/enterprise/.

|chef server osc|
-----------------------------------------------------
|chef server osc| is the open source |chef server| that shares many of the same capabilities as the |chef server oec|. For more information about |chef server osc|, see docs.opscode.com/open_source/.

Common Features
-----------------------------------------------------
The following features are available in both |chef server oec| and |chef server osc|:

**The Node Object:** :doc:`About Node Objects </essentials_node_object>` | :doc:`Run-lists </essentials_node_object_run_lists>` | :doc:`Deep Merge </essentials_node_object_deep_merge>`

**Search:** :doc:`About Search </essentials_search>`

**Security:** :doc:`Authentication and Authorization </auth>` | :doc:`Headers and Endpoints </api_chef_server>` | :doc:`Private Keys </chef_private_keys>`

**Policy:** :doc:`About Policy </essentials_policy>` | :doc:`Data Bags </essentials_data_bags>` | :doc:`Environments </essentials_environments>` | :doc:`Roles </essentials_roles>`

**APIs:** :doc:`Cookbooks Site API </api_cookbooks_site>` | :doc:`Chef Server API </api_chef_server>`


The Nodes 
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The chef-client Run </essentials_nodes_chef_run>` | :doc:`Chef Solo </chef_solo>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Install the chef-client on Windows </install_windows>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Ohai:** :doc:`About Ohai </ohai>`

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` | :doc:`Handlers </essentials_handlers>` | `Popular Cookbooks <https://github.com/opscode-cookbooks>`_

**LWRPs:** :doc:`About LWRPs in Community Cookbooks </lwrp>` | :doc:`About Custom LWRPs </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>`

**Resources and Providers:** :doc:`About Resources and Providers </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>`


.. Hide the TOC from this file.

.. toctree::
   :hidden:

   api_chef_server
   api_cookbooks_site
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
   config
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_shell
   ctl_chef_solo
   ctl_ohai
   debug
   dsl_recipe
   dsl_recipe_method_attribute
   dsl_recipe_method_cookbook_name
   dsl_recipe_method_data_bag
   dsl_recipe_method_platform
   dsl_recipe_method_platform_family
   dsl_recipe_method_recipe_name
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
   install
   install_bootstrap
   install_omnibus
   install_server
   install_server_scenario_vm
   install_windows
   install_workstation
   just_enough_ruby_for_chef
   knife
   knife_using
   knife_common_options
   knife_bootstrap
   knife_client
   knife_configure
   knife_cookbook
   knife_cookbook_site
   knife_data_bag
   knife_environment
   knife_exec
   knife_index_rebuild
   knife_node
   knife_recipe_list
   knife_role
   knife_search
   knife_show
   knife_ssh
   knife_status
   knife_tag
   lwrp
   lwrp_chef_handler
   lwrp_custom
   lwrp_custom_provider
   lwrp_custom_provider_ruby
   lwrp_custom_resource
   lwrp_custom_resource_library
   migrate_to_hosted
   ohai
   ohai_custom
   opscode_cookbooks
   plugin_knife
   plugin_knife_authenticated_requests
   plugin_knife_custom
   plugin_knife_windows
   release_notes
   resource
   resource_apt_package
   resource_bash
   resource_breakpoint
   resource_chef_gem
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
   resource_python
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


