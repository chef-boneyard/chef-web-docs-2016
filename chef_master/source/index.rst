=====================================================
All about Chef ...  
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst


Getting Started
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>` | :doc:`Why Chef? </chef_why>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Chef Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Attributes </chef_overview_attributes>` | :doc:`Resources and Providers </resource>` | :doc:`LWRPs </lwrp_custom>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

**Try it out:** (1) `Sign up for Hosted Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) or `Sign up for Private Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**), then (2) :doc:`Install the chef-client on a Workstation </install_workstation>`, (3) and then :doc:`Bootstrap a Node </install_bootstrap>`

**learnchef.opscode.com:** Install a Workstation `for Mac <https://learnchef.opscode.com/quickstart/workstation-setup/#mac/>`_, `for Linux <https://learnchef.opscode.com/quickstart/workstation-setup/#linux/>`_, or `for Windows <https://learnchef.opscode.com/quickstart/workstation-setup/#windows/>`_ | `Use the Chef Repo <https://learnchef.opscode.com/quickstart/chef-repo/>`_ | `Converge a Node <https://learnchef.opscode.com/quickstart/converge/>`_

**What's new:** :doc:`Release Notes for Chef 11.6 </release_notes>`

**Docs for Previous Versions of Chef:** `11.0, 11.2, and 11.4 <http://docs.opscode.com/release/11-4/>`_

The Community 
=====================================================
.. include:: ../../includes_community/includes_community_contributions.rst

The Workstation
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The Chef Repository </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install Chef on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the Chef Repository </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`deps </knife_deps>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`edit </knife_edit>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` | :doc:`xargs </knife_xargs>` --- **Single Page:** `Knife Reference <http://docs.opscode.com/chef/knife.html>`_ | `Knife Quick Reference <http://docs.opscode.com/_images/qr_knife_web.png>`_ (image)

**Plugins:** :doc:`About Plugins </plugin_knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Custom Plugins </plugin_knife_custom>` | :doc:`Authenticated Requests </plugin_knife_authenticated_requests>` --- **Commands:** :doc:`azure </plugin_knife_azure>` | :doc:`bluebox </plugin_knife_bluebox>` | :doc:`ec2 </plugin_knife_ec2>` | :doc:`eucalyptus </plugin_knife_eucalyptus>` | :doc:`google </plugin_knife_google>` | :doc:`hp </plugin_knife_hp>` | :doc:`linode </plugin_knife_linode>` | :doc:`openstack </plugin_knife_openstack>` | :doc:`rackspace </plugin_knife_rackspace>` | :doc:`terremark </plugin_knife_terremark>` | :doc:`windows </plugin_knife_windows>` --- **Single Page:** `Knife Plugins Reference <http://docs.opscode.com/chef/knife_plugins.html>`_

**Settings:** :doc:`knife.rb </config_rb_knife>` | :doc:`metadata.rb </config_rb_metadata>`

**Tools:** :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-apply (executable) </ctl_chef_apply>`


The Server
=====================================================
**The basics:** :doc:`About the Chef Server </chef_overview_server>` | :doc:`Server Components </server_components>` | :doc:`Hosted Chef </chef_overview_server_hosted>` vs. :doc:`Private Chef </chef_overview_server_private>` vs. :doc:`Open Source Chef </chef_overview_server_open_source>` | :doc:`Authentication and Authorization </auth>` | :doc:`Private Keys </chef_private_keys>`

**Install:** `Sign up for Hosted Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) | `Sign up for Private Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**) | :doc:`Install the Chef Server </install_server>` | :doc:`Scenario: Install the Chef Server on a Virtual Machine </install_server_scenario_vm>` | :doc:`Download with Omnitruck API </api_omnitruck>`

**The Node Object:** :doc:`About Node Objects </essentials_node_object>` | :doc:`Run-lists </essentials_node_object_run_lists>` | :doc:`Deep Merge </essentials_node_object_deep_merge>`

**Search:** :doc:`About Search </essentials_search>`

**Policy:** :doc:`About Policy </essentials_policy>` | :doc:`Data Bags </essentials_data_bags>` | :doc:`Environments </essentials_environments>` | :doc:`Roles </essentials_roles>`

**Manage:** :doc:`Hosted Chef </manage_server_hosted>`

**Settings:** :doc:`chef-server.rb </config_rb_chef_server>`

**Tools:** :doc:`orgmapper </orgmapper>` | :doc:`chef-server-ctl </ctl_chef_server>` | :doc:`private-chef-ctl </ctl_private_chef>`

**APIs:** :doc:`Cookbooks Site API </api_cookbooks_site>` | :doc:`Chef Server API </api_chef_server>`


The Nodes
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The Chef Run </essentials_nodes_chef_run>` | :doc:`Ohai </ohai>` | :doc:`Chef Solo </chef_solo>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Configure:** :doc:`Exception and Report Handlers </essentials_handlers>`

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` | `Cookbooks Maintained by Opscode <https://github.com/opscode-cookbooks>`_

**LWRPs:** :doc:`About Custom LWRPs </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` --- **Single Page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_

**Resources and Providers:** :doc:`About Resources and Providers </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`batch </resource_batch>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`scm </resource_scm>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>` --- **Single Page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_

**LWRPs in Cookbooks:** :doc:`About LWRPs </lwrp>` | :doc:`Common Functionality </resource_common>` --- **LWRPs Maintained by Opscode:**  :doc:`apt </lwrp_apt>` | :doc:`aws </lwrp_aws>` | :doc:`bluepill </lwrp_bluepill>` | :doc:`chef_handler </lwrp_chef_handler>` | :doc:`daemontools </lwrp_daemontools>` | :doc:`djbdns </lwrp_djbdns>` | :doc:`dmg </lwrp_dmg>` | :doc:`dynect </lwrp_dynect>` | :doc:`firewall </lwrp_firewall>` | :doc:`freebsd </lwrp_freebsd>` | :doc:`gunicorn </lwrp_gunicorn>` | :doc:`homebrew </lwrp_homebrew>` | :doc:`iis </lwrp_iis>` | :doc:`maven </lwrp_maven>` | :doc:`nagios </lwrp_nagios>` | :doc:`pacman </lwrp_pacman>` | :doc:`php </lwrp_php>` | :doc:`powershell </lwrp_powershell>` | :doc:`python </lwrp_python>` | :doc:`rabbitmq </lwrp_rabbitmq>` | :doc:`riak </lwrp_riak>` | :doc:`samba </lwrp_samba>` | :doc:`sudo </lwrp_sudo>` | :doc:`supervisor </lwrp_supervisor>` | :doc:`transmission </lwrp_transmission>` | :doc:`users </lwrp_users>` | :doc:`webpi </lwrp_webpi>` | :doc:`windows </lwrp_windows>` | :doc:`yum </lwrp_yum>` --- **Single Page:** `Lightweight Resources <http://docs.opscode.com/chef/lwrps.html>`_

 

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
   chef_overview_attributes
   chef_private_keys
   chef_why
   debug
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
   api_omnitruck
   api_pushy
   dsl_recipe
   ohai
   orgmapper
   ctl_chef_client
   ctl_chef_server
   ctl_private_chef
   ctl_chef_solo
   ctl_pushy_client
   server_types
   server_components 

   auth

   essentials_nodes
   essentials_nodes_chef_run
   essentials_nodes_why_run
   essentials_chef_client
   essentials_handlers
   essentials_repository
   essentials_repository_create
   essentials_knife
   essentials_policy
   essentials_node_object
   essentials_data_bags
   essentials_environment_variables
   essentials_environments
   essentials_roles
   essentials_search
   essentials_cookbooks
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
   manage_server_hosted 
   chef_system_requirements
   images

   pushy

   upgrade_server
   ctl_chef_shell
   ctl_chef_apply
   style_guide
   chef_shell
   videos
   release_notes

   
   manage_server_hosted_accounts
   manage_server_hosted_clients
   manage_server_hosted_cookbooks
   manage_server_hosted_data_bags
   manage_server_hosted_environments
   manage_server_hosted_groups
   manage_server_hosted_nodes
   manage_server_hosted_organizations
   manage_server_hosted_permissions
   manage_server_hosted_roles
   manage_server_hosted_search
   manage_server_hosted_users

   essentials_node_object_deep_merge
   essentials_node_object_run_lists