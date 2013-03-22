=====================================================
Everything you need to know about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst


Getting Started
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Chef Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Resources and Providers </resource>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

**Try it out:** (1) `Sign up for Hosted Chef <http://www.opscode.com/hosted-chef/>`_ (click **Free Trial**) or `Sign up for Private Chef <http://www.opscode.com/private-chef//>`_ (click **Free Trial**), then (2) :doc:`Install Chef on a Workstation </install_workstation>`, (3) and then :doc:`Bootstrap a Node </install_bootstrap>`

**learnchef.opscode.com:** Install a Workstation `for Mac <https://learnchef.opscode.com/quickstart/workstation-setup/#mac/>`_, `for Linux <https://learnchef.opscode.com/quickstart/workstation-setup/#linux/>`_, or `for Windows <https://learnchef.opscode.com/quickstart/workstation-setup/#windows/>`_ | `Use the Chef Repo <https://learnchef.opscode.com/quickstart/chef-repo//>`_ | `Converge a Node <https://learnchef.opscode.com/quickstart/converge//>`_

**What's new:** :doc:`Chef 11.0 </breaking_changes_chef_11>`


The Chef Community
=====================================================
.. include:: ../../includes_community/includes_community_contributions.rst

The Workstation
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The Chef Repository </essentials_repository>` | :doc:`Knife </knife>`

**Install:** :doc:`Install Chef on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the Chef Repository </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` --- **Single Page:** `Knife Reference <http://docs.opscode.com/chef/knife.html>`_ | `Knife Quick Reference <http://docs.opscode.com/_images/qr_knife_web.png>`_ (image)

**Plugins:** :doc:`About Plugins </plugin_knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Custom Plugins </plugin_knife_custom>` --- **Commands:** :doc:`azure </plugin_knife_azure>` | :doc:`bluebox </plugin_knife_bluebox>` | :doc:`ec2 </plugin_knife_ec2>` | :doc:`eucalyptus </plugin_knife_eucalyptus>` | :doc:`google </plugin_knife_google>` | :doc:`hp </plugin_knife_hp>` | :doc:`linode </plugin_knife_linode>` | :doc:`openstack </plugin_knife_openstack>` | :doc:`rackspace </plugin_knife_rackspace>` | :doc:`terremark </plugin_knife_terremark>` | :doc:`windows </plugin_knife_windows>` --- **Single Page:** `Knife Plugins Reference <http://docs.opscode.com/chef/knife_plugins.html>`_

**Settings:** :doc:`knife.rb </config_rb_knife>` | :doc:`metadata.rb </config_rb_metadata>`


The Chef Server
=====================================================
**The basics:** :doc:`About the Chef Server </chef_overview_server>` | :doc:`Server Components </server_components>` | :doc:`Hosted Chef </chef_overview_server_hosted>` vs. :doc:`Private Chef </chef_overview_server_private>` vs. :doc:`Open Source Chef </chef_overview_server_open_source>` | :doc:`Authentication and Authorization </auth>`

**Install:** `Sign up for Hosted Chef <http://www.opscode.com/hosted-chef/>`_ (click **Free Trial**) | `Sign up for Private Chef <http://www.opscode.com/private-chef//>`_ (click **Free Trial**) | :doc:`Install the Chef Server </install_server>` | :doc:`Scenario: Install the Chef Server on a Virtual Machine </install_server_scenario_vm>`

**The Node Object:** :doc:`About Node Objects </essentials_node_object>` | :doc:`Run-lists </essentials_node_object_run_lists>` | :doc:`Deep Merge </essentials_node_object_deep_merge>`

**Search:** :doc:`About Search </essentials_search>` | :doc:`Indexes </essentials_search_indexes>` | :doc:`Keys (field names) </essentials_search_keys>` | :doc:`Operators </essentials_search_boolean_operators>` | :doc:`Partial Search Queries </essentials_search_partial>` | :doc:`Patterns </essentials_search_patterns>` | :doc:`Query Syntax </essentials_search_query_syntax>` | :doc:`Special Characters </essentials_search_special_characters>` | :doc:`Targets </essentials_search_targets>`

**Policy:** :doc:`About Policy </essentials_policy>` | :doc:`Data Bags </essentials_data_bags>` | :doc:`Environments </essentials_environments>` | :doc:`Roles </essentials_roles>`

**Manage:** :doc:`Hosted Chef </manage_server_hosted>`

**Settings:** :doc:`server.rb </config_rb_server>` | :doc:`solo.rb </config_rb_solo>` | :doc:`solr.rb </config_rb_solr>`

**Tools:** :doc:`orgmapper </orgmapper>` | :doc:`ctl-chef-server </ctl_chef_server>` | :doc:`private-chef-ctl </ctl_private_chef>`

**APIs:** :doc:`Cookbooks Site API </api_cookbooks_site>` | :doc:`Chef Server API </api_chef_server>`


The Nodes 
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The Chef Run </essentials_nodes_chef_run>` | :doc:`Ohai </ohai>`

**Install:** :doc:`Install Chef on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>`

**Configure:** :doc:`Exception and Report Handlers </essentials_handlers>`

**Settings:** :doc:`client.rb </config_rb_client>`

**Tools:** :doc:`chef-client (executable) </chef_client>` | :doc:`chef-solo (executable) </chef_solo>` | :doc:`why-run </essentials_nodes_why_run>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`Cookbooks Directory Structure </essentials_cookbook_directory>`

**Community Cookbooks:** :doc:`Cookbooks Maintained by Opscode </opscode_cookbooks>` --- **Individual Cookbooks:** :doc:`chef_handler </opscode_cookbooks_chef_handler>` | :doc:`iis </opscode_cookbooks_iis>` | :doc:`python </opscode_cookbooks_python>` | :doc:`supervisor </opscode_cookbooks_supervisor>` | ... `more cookbooks <https://github.com/opscode-cookbooks>`_

**Recipes:** :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`Recipe DSL </dsl_recipe>` | :doc:`Use Data Bags </essentials_cookbook_recipes_data_bags>` | :doc:`Use Search Results </essentials_cookbook_recipes_search>` | :doc:`Use Ruby </essentials_cookbook_recipes_use_ruby>` | :doc:`Include other Recipes </essentials_cookbook_recipes_in_recipes>` | :doc:`Dependencies </essentials_cookbook_recipes_cookbook_dependencies>` | :doc:`Exception Handlers </essentials_cookbook_recipes_handlers_and_logs>` | :doc:`Apply to Run-lists </essentials_cookbook_recipes_run_lists>` | :doc:`End a Chef run </essentials_cookbook_recipes_end_chef_run>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` --- **Single Page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_

**Resources and Providers:** :doc:`About Resources and Providers </resource>` --- **Common Functionality:** :doc:`Actions </resource_common_actions>` | :doc:`Attributes </resource_common_attributes>` | :doc:`Conditions </resource_common_conditionals>` | :doc:`Notifications </resource_common_notifications>` | :doc:`Relative Paths </resource_common_relative_paths>` | :doc:`Run During Resource Compilation </resource_common_compile>` | :doc:`Windows File Security </resource_common_windows_file_security>` --- **Resources:**  :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`scm </resource_scm>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` --- **Single Page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_

**Lightweight Resources:** :doc:`About Lightweight Resources </lwrp>` --- **Common Functionality:** :doc:`Actions </resource_common_actions>` | :doc:`Attributes </resource_common_attributes>` | :doc:`Conditions </resource_common_conditionals>` | :doc:`Inline Compile Mode </lwrp_common_inline_compile>` | :doc:`Notifications </resource_common_notifications>` | :doc:`Relative Paths </resource_common_relative_paths>` --- **Lightweight Resources Maintained by Opscode:**  :doc:`apt </lwrp_apt>` | :doc:`aws </lwrp_aws>` | :doc:`bluepill </lwrp_bluepill>` | :doc:`chef_handler </lwrp_chef_handler>` | :doc:`daemontools </lwrp_daemontools>` | :doc:`djbdns </lwrp_djbdns>` | :doc:`dmg </lwrp_dmg>` | :doc:`dynect </lwrp_dynect>` | :doc:`firewall </lwrp_firewall>` | :doc:`freebsd </lwrp_freebsd>` | :doc:`gunicorn </lwrp_gunicorn>` | :doc:`homebrew </lwrp_homebrew>` | :doc:`iis </lwrp_iis>` | :doc:`maven </lwrp_maven>` | :doc:`mysql </lwrp_mysql>` | :doc:`nagios </lwrp_nagios>` | :doc:`pacman </lwrp_pacman>` | :doc:`php </lwrp_php>` | :doc:`powershell </lwrp_powershell>` | :doc:`python </lwrp_python>` | :doc:`rabbitmq </lwrp_rabbitmq>` | :doc:`riak </lwrp_riak>` | :doc:`samba </lwrp_samba>` | :doc:`sudo </lwrp_sudo>` | :doc:`supervisor </lwrp_supervisor>` | :doc:`transmission </lwrp_transmission>` | :doc:`users </lwrp_users>` | :doc:`webpi </lwrp_webpi>` | :doc:`windows </lwrp_windows>` | :doc:`yum </lwrp_yum>` | :doc:`zenoss </lwrp_zenoss>` --- **Single Page:** `Lightweight Resources <http://docs.opscode.com/chef/lwrps.html>`_

**Attribute Files:** :doc:`About Attribute Files </essentials_cookbook_attribute_files>` | :doc:`Accessor Methods </essentials_cookbook_attribute_files_accessor_methods>` | :doc:`Attribute Methods </essentials_cookbook_attribute_files_attribute_methods>` | :doc:`Automatic Attributes </essentials_cookbook_attribute_files_attribute_automatic>` | :doc:`File Ordering </essentials_cookbook_attribute_files_ordering>` | :doc:`Notation </essentials_cookbook_attribute_files_attribute_notation>` | :doc:`Persistence </essentials_cookbook_attribute_files_attribute_persistence>` | :doc:`Precedence </essentials_cookbook_attribute_files_attribute_precedence>` | :doc:`Attribute Types </essentials_cookbook_attribute_files_attribute_types>`

**Other Cookbook Components:** :doc:`Definitions </essentials_cookbook_definitions>` | :doc:`Files </essentials_cookbook_files>` | :doc:`Libraries </essentials_cookbook_libraries>` | :doc:`Metadata </essentials_cookbook_metadata>` | :doc:`Templates </essentials_cookbook_templates>` | :doc:`Versions </essentials_cookbook_versions>`

.. Hide the TOC from this file.

.. toctree::
   :hidden:
   
   chef_overview
   chef_quick_overview
   community

   breaking_changes_chef_11
   just_enough_ruby_for_chef
   chef_overview_cookbooks
   chef_overview_nodes
   chef_overview_server
   chef_overview_server_hosted
   chef_overview_server_open_source
   chef_overview_server_private
   chef_overview_workstation
   chef_why
   install
   install_server
   install_server_scenario_vm
   knife
   plugin_knife
   resource
   opscode_cookbooks
   lwrp
   config
   config_rb_chef_server
   chef_client
   chef_solo
   api_chef_server
   api_cookbooks_site
   dsl_recipe
   ohai
   orgmapper
   ctl_chef_server
   ctl_private_chef
   server_types
   server_components

   auth

   essentials_nodes
   essentials_nodes_chef_run
   essentials_nodes_why_run
   essentials_chef_client
   essentials_handlers
   essentials_repository
   essentials_knife
   essentials_policy
   essentials_node_object
   essentials_data_bags
   essentials_environments
   essentials_roles
   essentials_search
   essentials_cookbooks
   essentials_cookbook_attribute_files
   essentials_cookbook_directory
   essentials_cookbook_definitions
   essentials_cookbook_files
   essentials_cookbook_libraries
   essentials_cookbook_lwrp
   essentials_cookbook_metadata
   essentials_cookbook_recipes
   essentials_cookbook_resources
   essentials_cookbook_templates
   essentials_cookbook_versions
   manage_server_hosted 
   chef_system_requirements
   images

   upgrade_server




   
