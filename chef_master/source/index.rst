=====================================================
All about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst


Getting Started 
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>` | :doc:`Why Chef? </chef_why>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Attributes </chef_overview_attributes>` | :doc:`Resources and Providers </resource>` | :doc:`LWRPs </lwrp_custom>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

**Try it out:** (1) `Sign up for Hosted Enterprise Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) or `Install Enterprise Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**), then (2) :doc:`Install the chef-client on a Workstation </install_workstation>`, (3) and then :doc:`Bootstrap a Node </install_bootstrap>`

**learnchef.opscode.com:** Install a Workstation `for Mac <https://learnchef.opscode.com/quickstart/workstation-setup/#mac/>`_, `for Linux <https://learnchef.opscode.com/quickstart/workstation-setup/#linux/>`_, or `for Windows <https://learnchef.opscode.com/quickstart/workstation-setup/#windows/>`_ | `Use the chef-repo <https://learnchef.opscode.com/quickstart/chef-repo/>`_ | `Converge a Node <https://learnchef.opscode.com/quickstart/converge/>`_

**Docs for Specific Platforms:** :doc:`OpenStack </openstack>` | :doc:`Windows </windows>`

**What's new:** :doc:`Release Notes for Chef 11.8 </release_notes>`

**Docs for Previous Versions of Chef:** `11.6 <http://docs.opscode.com/release/11-6/>`_ | `11.0, 11.2, and 11.4 <http://docs.opscode.com/release/11-4/>`_ | :doc:`Documentation Feedback </feedback>`



The Community 
=====================================================
The community is one of the best features of |chef| because it is populated by all of the people who use |chef|. This also means that the community is a great place to bounce ideas around, ask questions, and to find ways to help make |chef| better.

**Workflow:**  `Berkshelf <http://berkshelf.com/>`_ | `Librarian <https://github.com/applicationsonline/librarian>`_ | `Spiceweasel <https://github.com/mattray/spiceweasel>`_

**Development tools:**  `test-kitchen <https://github.com/opscode/test-kitchen>`_ | `Food Critic <http://acrmp.github.com/foodcritic/>`_ | `cucumber-chef <http://www.cucumber-chef.org/>`_ | `chef-workflow <https://github.com/chef-workflow>`_ | `chefspec <https://github.com/acrmp/chefspec>`_ | `yard-chef <https://rubygems.org/gems/yard-chef/>`_ | `Cookbooks <http://community.opscode.com/cookbooks>`_ | `Jenkins Plugin <https://github.com/melezhik/chef-plugin/>`_ | `chef-zero <https://github.com/opscode/chef-zero>`_

**Discussion:** :doc:`Guidelines </community_guidelines>` | :doc:`lists.opscode.com </community_lists>` | `Food Fight Show <http://foodfightshow.org/>`_ --- **Chat channels:** `chef <http://community.opscode.com/chat/chef>`_ | `chef-hacking <http://community.opscode.com/chat/chef-hacking>`_ | `openstack-chef <http://community.opscode.com/chat/openstack-chef>`_

**Books about Chef:** `Test-Driven Infrastructure with Chef, 2nd Edition <http://shop.oreilly.com/product/0636920030973.do>`_ | `Instant Chef Starter <http://www.packtpub.com/chef-starter/book>`_ | `Chef Infrastructure Automation Cookbook <http://www.packtpub.com/chef-infrastructure-automation-cookbook/book>`_ | `Chef Survival Guide <https://leanpub.com/chef-survival-guide>`_

**Plugins:** :doc:`Chef </community_plugin_chef>` | :doc:`Knife </community_plugin_knife>` | :doc:`Ohai </community_plugin_ohai>` | :doc:`Report handlers </community_plugin_report_handler>` | `Ridley <https://github.com/reset/ridley>`_

.. **Chef for OpenStack:** :doc:`Overview </openstack>` | :doc:`knife-openstack </plugin_knife_openstack>`

**Contributions:** `Contribute to Open Source Chef <http://docs.opscode.com/community_contributions.html>`_ | `Contribute to the Documentation <https://github.com/opscode/chef-docs>`_ | `Style Guide <http://docs.opscode.com/style_guide.html>`_

The Workstation 
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The chef-repo </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the chef-repo </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`deps </knife_deps>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`edit </knife_edit>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` | :doc:`xargs </knife_xargs>` --- **Single Page:** `Knife Reference <http://docs.opscode.com/chef/knife.html>`_ | `Knife Quick Reference <http://docs.opscode.com/_images/qr_knife_web.png>`_ (image)

**Plugins:** :doc:`About Plugins </plugin_knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Custom Plugins </plugin_knife_custom>` | :doc:`Authenticated Requests </plugin_knife_authenticated_requests>` --- **Commands:** :doc:`azure </plugin_knife_azure>` | :doc:`bluebox </plugin_knife_bluebox>` | :doc:`ec2 </plugin_knife_ec2>` | :doc:`eucalyptus </plugin_knife_eucalyptus>` | :doc:`google </plugin_knife_google>` | :doc:`hp </plugin_knife_hp>` | :doc:`linode </plugin_knife_linode>` | :doc:`openstack </plugin_knife_openstack>` | :doc:`rackspace </plugin_knife_rackspace>` | :doc:`terremark </plugin_knife_terremark>` | :doc:`windows </plugin_knife_windows>` --- **Single Page:** `Knife Plugins Reference <http://docs.opscode.com/chef/knife_plugins.html>`_

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
|chef server oec| is a |chef server| that can be deployed behind the firewall or be accessed from the hosted platform. |chef server oec| includes all of the core functionality included in the |chef server osc| version, but includes additional functionality like |reporting| and built-in support for high availability deployment scenarios.

**Deployment Scenarios:** :doc:`Standalone </server_deploy_standalone>` | :doc:`Scaled Back End </server_deploy_be>` | :doc:`Scaled Front End </server_deploy_fe>` | :doc:`Scaled Front and Back Ends </server_deploy_febe>`

**Install:** :doc:`Prerequisites </install_server_pre>` | :doc:`Install the Enterprise Chef Server </install_server_oec>` | :doc:`Download the chef-client using the Omnitruck API </api_omnitruck>`

**Install Scenarios:** :doc:`Standalone </install_server_standalone>` | :doc:`Scaled Back End </install_server_be>` | :doc:`Scaled Front End </install_server_fe>` | :doc:`Scaled Front and Back Ends </install_server_febe>` | :doc:`Migrate to Hosted Enterprise Chef </migrate_to_hosted>` | :doc:`Upgrade from Private Chef </upgrade_server>`

**Install Options:** :doc:`Active Directory / LDAP </install_server_ldap>` | :doc:`Create Users </install_server_users>` | :doc:`Create Organizations </install_server_orgs>`

**Add-ons:** :doc:`Reporting </reporting>` | :doc:`Push Jobs </push_jobs>`

**Manage:** :doc:`Backup and Restore </server_backup_restore>` | :doc:`Firewalls and Ports </server_firewalls_and_ports>` | :doc:`High Availability </server_high_availability>` | :doc:`LDAP </server_ldap>` | :doc:`Logs </server_logs>` | :doc:`Monitor </server_monitor>` | | :doc:`Security </server_security>` | :doc:`Services </server_services>` | :doc:`Performance Tuning </server_tuning>` | :doc:`Users </server_users>` 

**Settings and Tools:** :doc:`private-chef.rb </config_rb_chef_server_enterprise>` | :doc:`private-chef-ctl </ctl_private_chef>` | :doc:`orgmapper </orgmapper>`

|chef server osc|
-----------------------------------------------------
|chef server osc| is the open source |chef server| that shares many of the same capabilities as the |chef server oec|.

**Install:** `Sign up for Hosted Enterprise Chef <http://www.opscode.com/hosted-chef/?utm_source=docs>`_ (click **Get Chef**) | `Install Enterprise Chef <http://www.opscode.com/private-chef/?utm_source=docs>`_ (click **Get Chef**) | :doc:`Install the Chef Server </install_server>` | :doc:`Scenario: Install the Chef Server on a Virtual Machine </install_server_scenario_vm>` | :doc:`Download with Omnitruck API </api_omnitruck>`

**Settings and Tools:** :doc:`chef-server.rb </config_rb_chef_server>` | :doc:`chef-server-ctl </ctl_chef_server>`

Common Features
-----------------------------------------------------
The following features are available in both |chef server oec| and |chef server osc|:

**The Node Object:** :doc:`About Node Objects </essentials_node_object>` | :doc:`Run-lists </essentials_node_object_run_lists>` | :doc:`Deep Merge </essentials_node_object_deep_merge>`

**Search:** :doc:`About Search </essentials_search>`

**Security:** :doc:`Authentication </auth_authentication>` | :doc:`Authorization </auth_authorization>` | :doc:`Headers and Endpoints </api_chef_server>` | :doc:`Private Keys </chef_private_keys>`

**Policy:** :doc:`About Policy </essentials_policy>` | :doc:`Data Bags </essentials_data_bags>` | :doc:`Environments </essentials_environments>` | :doc:`Roles </essentials_roles>`

**APIs:** :doc:`Cookbooks Site API </api_cookbooks_site>` | :doc:`Chef Server API </api_chef_server>`


The Nodes
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The chef-client Run </essentials_nodes_chef_run>` | :doc:`Chef Solo </chef_solo>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Install the chef-client on Windows </install_windows>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Configure:** :doc:`Exception and Report Handlers </essentials_handlers>`

**Ohai:** :doc:`About Ohai </ohai>`

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` | `Cookbooks Maintained by Opscode <https://github.com/opscode-cookbooks>`_

**LWRPs:** :doc:`About Custom LWRPs </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` --- **Single Page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_

**Resources and Providers:** :doc:`About Resources and Providers </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`batch </resource_batch>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>` --- **Single Page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_

**LWRPs in Cookbooks:** :doc:`About LWRPs </lwrp>` | :doc:`Common Functionality </resource_common>` --- **LWRPs Maintained by Opscode:**  :doc:`apt </lwrp_apt>` | :doc:`aws </lwrp_aws>` | :doc:`bluepill </lwrp_bluepill>` | :doc:`chef_handler </lwrp_chef_handler>` | :doc:`daemontools </lwrp_daemontools>` | :doc:`djbdns </lwrp_djbdns>` | :doc:`dmg </lwrp_dmg>` | :doc:`dynect </lwrp_dynect>` | :doc:`firewall </lwrp_firewall>` | :doc:`freebsd </lwrp_freebsd>` | :doc:`gunicorn </lwrp_gunicorn>` | :doc:`homebrew </lwrp_homebrew>` | :doc:`iis </lwrp_iis>` | :doc:`maven </lwrp_maven>` | :doc:`nagios </lwrp_nagios>` | :doc:`pacman </lwrp_pacman>` | :doc:`php </lwrp_php>` | :doc:`powershell </lwrp_powershell>` | :doc:`python </lwrp_python>` | :doc:`rabbitmq </lwrp_rabbitmq>` | :doc:`riak </lwrp_riak>` | :doc:`samba </lwrp_samba>` | :doc:`sudo </lwrp_sudo>` | :doc:`supervisor </lwrp_supervisor>` | :doc:`transmission </lwrp_transmission>` | :doc:`users </lwrp_users>` | :doc:`webpi </lwrp_webpi>` | :doc:`windows </lwrp_windows>` | :doc:`yum </lwrp_yum>` --- **Single Page:** `Lightweight Resources <http://docs.opscode.com/chef/lwrps.html>`_


.. Hide the TOC from this file. 

.. toctree::
   :hidden:

   api_chef_server
   api_cookbooks_site
   api_omnitruck
   api_push_jobs
   auth
   auth_authentication
   auth_authorization
   breaking_changes_chef_11
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
   chef_system_requirements
   chef_why
   community
   community_contributions
   config
   config_rb_chef_server
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_server
   ctl_chef_shell
   ctl_chef_solo
   ctl_ohai
   ctl_opscode_reporting
   ctl_private_chef
   ctl_push_jobs_client
   debug
   dsl_recipe
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
   feedback
   images
   install
   install_push_jobs
   junos
   just_enough_ruby_for_chef
   knife
   lwrp
   manage_server_hosted 
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
   migrate_to_hosted
   ohai
   ohai_custom
   openstack
   opscode_cookbooks
   orgmapper
   plugin_knife
   pushy
   push_jobs
   reporting
   release_notes
   resource
   server_backup_restore
   server_components 
   server_data
   server_deploy_be
   server_deploy_fe
   server_deploy_febe
   server_deploy_standalone
   server_firewalls_and_ports
   server_high_availability
   server_ldap
   server_logs
   server_monitor
   server_orgs
   server_security
   server_services
   server_tuning
   server_types
   server_users
   server_webui_tasks
   style_guide
   upgrade_server
   upgrade_server_ha
   upgrade_server_open_source
   upgrade_server_standalone
   videos
   windows
