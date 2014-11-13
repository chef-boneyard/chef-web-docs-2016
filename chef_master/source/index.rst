=====================================================
All about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

Getting Started
=====================================================
**From the beginning:** :doc:`An Overview of Chef </chef_overview>` | :doc:`About Workstations </chef_overview_workstation>` | :doc:`About the Chef Server </chef_overview_server>` | :doc:`About Nodes </chef_overview_nodes>` | :doc:`About Cookbooks </chef_overview_cookbooks>` | :doc:`About Attributes </chef_overview_attributes>` | :doc:`About Resources and Providers </resource>` | :doc:`About LWRPs (Custom Resources) </lwrp_custom>` | :doc:`About Knife </knife>` | :doc:`About Chef for Windows </windows>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

.. include:: ../../includes_chef/includes_chef_index_learnchef.rst

**Docs for Current Versions:** `chef-client <http://docs.getchef.com/client/>`__ | `Chef Server <http://docs.getchef.com/server/>`_ | `Chef DK <http://docs.getchef.com/devkit/>`__ | `Ohai 7 <http://docs.getchef.com/release/ohai-7/>`_ | :doc:`Release Notes for chef-client 11.16 </release_notes>` | :doc:`Previous Releases </releases>`


The Community
=====================================================
.. include:: ../../includes_chef/includes_chef_index_community.rst

The Workstation
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The chef-repo </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Workstation </install_dk>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the chef-repo </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`deps </knife_deps>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`edit </knife_edit>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`serve </knife_serve>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`ssl check </knife_ssl_check>` | :doc:`ssl fetch </knife_ssl_fetch>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` | :doc:`xargs </knife_xargs>` --- **Single Page:** `Knife Reference <http://docs.getchef.com/chef/knife.html>`_ | `Knife Quick Reference <http://docs.getchef.com/_images/qr_knife_web.png>`_ (image)

**Plugins:** :doc:`About Plugins </plugin_knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Custom Plugins </plugin_knife_custom>` | :doc:`Authenticated Requests </plugin_knife_authenticated_requests>` --- **Commands:** :doc:`azure </plugin_knife_azure>` | `bluebox <https://github.com/opscode/knife-bluebox>`__ | :doc:`ec2 </plugin_knife_ec2>` | `eucalyptus <https://github.com/opscode/knife-eucalyptus>`__ | :doc:`google </plugin_knife_google>` | `hp <https://github.com/opscode/knife-hp>`__ | `linode <https://github.com/opscode/knife-linode>`__ | :doc:`openstack </plugin_knife_openstack>` | `rackspace <https://github.com/opscode/knife-rackspace>`__ | `terremark <https://github.com/opscode/knife-terremark>`__ | :doc:`windows </plugin_knife_windows>`

**Settings:** :doc:`knife.rb </config_rb_knife>` | :doc:`metadata.rb </config_rb_metadata>`

**Tools:** :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-apply (executable) </ctl_chef_apply>`

|chef dk_title|
-----------------------------------------------------
The |chef dk| defines a common workflow for cookbook development, including unit and integration testing, identifying lint-like behavior, dedicated tooling, and more:

**Install:** :doc:`Install the chef-dk </install_dk>`

**Components:** :doc:`Kitchen </kitchen>` | :doc:`ChefSpec </chefspec>` | :doc:`Foodcritic </foodcritic>` | :doc:`Berkshelf </berkshelf>` | :doc:`chef-vault </chef_vault>`

**Tools:** :doc:`kitchen (executable) </ctl_kitchen>` | :doc:`chef (executable) </ctl_chef>`

**Settings:** :doc:`kitchen.yml </config_yml_kitchen>`

The |chef server_title|
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server.rst

.. note:: |chef server| 12 is the new |chef server|! The documentation for `Open Source Chef <http://docs.getchef.com/open_source/>`_ and `Enterprise Chef <http://docs.getchef.com/enterprise/>`_ is still available.

**Install Scenarios:** :doc:`Installs </install_server>` | :doc:`Upgrades </upgrade_server>`

**Features:** :doc:`Chef Manage </manage>` | :doc:`Reporting </reporting>` | :doc:`Push Jobs </push_jobs>` | :doc:`Chef Analytics </analytics>` | :doc:`Replication </server_replication>` | :doc:`High Availability </server_high_availability>`

**Manage Server:** :doc:`Runbook </runbook>` (all manage tasks in a single topic) --- **Shorter topics:** :doc:`Backup and Restore </server_backup_restore>` | :doc:`Firewalls and Ports </server_firewalls_and_ports>` | :doc:`High Availability </server_high_availability>` | :doc:`Logs </server_logs>` | :doc:`Active Directory and LDAP </server_ldap>` | :doc:`Monitor </server_monitor>` | :doc:`Organizations, Groups, and Users </server_orgs>` | :doc:`Replication </server_replication>` | :doc:`Security </server_security>` | :doc:`Services </server_services>` | :doc:`Server Tuning </server_tuning>`

**Chef Manage Webui:** :doc:`Clients </server_manage_clients>` | :doc:`Cookbooks </server_manage_cookbooks>` | :doc:`Data Bags </server_manage_data_bags>` | :doc:`Environments </server_manage_environments>` | :doc:`Nodes </server_manage_nodes>` | :doc:`Reports </server_manage_reports>` | :doc:`Roles </server_manage_roles>`

**Settings and Tools:** :doc:`chef-server.rb </config_rb_server>` | :doc:`chef-server-ctl </ctl_chef_server>` | :doc:`manage.rb </config_rb_manage>` | :doc:`chef-sync.rb </config_rb_chef_sync>` | :doc:`chef-sync-ctl </ctl_chef_sync>` | :doc:`opscode-expander-ctl </ctl_opscode_expander>` | :doc:`opscode-reporting-ctl </ctl_reporting>`

**APIs:** :doc:`Chef Server API </api_chef_server>` | :doc:`Cookbooks Site API </api_cookbooks_site>` | :doc:`Push Jobs API </api_push_jobs>`

Server Essentials
-----------------------------------------------------
The server acts as a hub for all of the data needed by the |chef client| while it configures a node:

* A :doc:`node object </essentials_node_object>` exists for each node that is being managed by the |chef client|
* Each node object consists of a :doc:`run-list </essentials_node_object_run_lists>` and a `collection of attributes <http://docs.getchef.com/essentials_node_object.html#attributes>`_
* All data that is stored on the |chef server|---including everything uploaded to the server from the |chef repo| and by the |chef client|---is :doc:`searchable </essentials_search>` from both recipes (using the :doc:`search method </dsl_recipe_method_search>` in the |dsl recipe|) and the workstation (using the :doc:`knife search </knife_search>` subcommand)
* The |chef server| can apply :doc:`global policy settings </essentials_policy>` to all nodes across the organization, including for :doc:`data bags </essentials_data_bags>`, :doc:`environments </essentials_environments>`, and :doc:`roles </essentials_roles>`
* The :doc:`authentication </auth_authentication>` process ensures that requests can only be made to the |chef server| by authorized users
* Users, once :doc:`authorized </auth_authorization>` can only perform certain actions
* The |chef server| provides :doc:`powerful search </essentials_search>` functionality

|chef analytics_title|
-----------------------------------------------------
:doc:`Chef Analytics </analytics>` is an add-on for the |chef server| that provides visibility into what is happening on the server. It runs on separate hardware from the |chef server| and consists of several components, initially built around :doc:`Chef Actions </actions>`.

**Install Chef Analytics:** :doc:`Install Chef Analytics </install_analytics>`

**Settings and Tools:** :doc:`Web user interface </analytics_webui_tasks>` | :doc:`opscode-analytics.rb </config_rb_analytics>` | :doc:`opscode-analytics-ctl </ctl_analytics>`


The Nodes
=====================================================
**The Basics:** :doc:`About Nodes </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`The chef-client Run </essentials_nodes_chef_run>` | :doc:`Chef Solo </chef_solo>` | :doc:`Debug Recipes </chef_shell>` | :doc:`Chef for Containers </containers>` | :doc:`Chef for Junos OS </junos>`

**Install:** :doc:`About Bootstrap </essentials_nodes_bootstrap>` | :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Install the chef-client on Windows </install_windows>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Ohai:** :doc:`About Ohai 7 </ohai>` | :doc:`Custom Ohai 7 Plugins </ohai_custom>` | `Ohai 6 <http://docs.getchef.com/release/ohai-6/>`_

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Command-line Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>` | :doc:`ohai (executable) </ctl_ohai>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` |  :doc:`Handlers </handlers>` | `Popular Cookbooks <https://github.com/opscode-cookbooks>`_

**Custom Resources:** :doc:`About Custom Resources </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag_item>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` | :doc:`Windows Platform Helper Methods </dsl_recipe_helper_windows_platform>` --- **Single Page:** `Recipe DSL <http://docs.getchef.com/chef/dsl_recipe.html>`_

**Resources:** :doc:`About Resources </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`batch </resource_batch>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`chef_handler </resource_chef_handler>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`dsc_script </resource_dsc_script>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>` | :doc:`windows_package </resource_windows_package>` --- **Single Page:** `Resources and Providers <http://docs.getchef.com/chef/resources.html>`_

**Community Resources (LWRPs):** :doc:`About LWRPs </lwrp>` | `Chef-maintained Cookbooks <https://github.com/opscode-cookbooks/>`__ | `Supermarket <https://supermarket.getchef.com>`__


.. Hide the TOC from this file.

.. toctree::
   :hidden:

   actions
   analytics
   analytics_rules
   analytics_webui_tasks
   api_chef_server
   api_cookbooks_site
   api_omnitruck
   api_push_jobs
   auth
   auth_authentication
   auth_authorization
   azure_portal
   berkshelf
   breaking_changes_chef_11
   chef_client
   chef_client_security
   chef_cookbooks
   chef_dk
   chef_metal
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
   chef_system_requirements
   chef_vault
   chef_why
   chefspec
   community
   community_contributions
   community_guidelines
   community_lists
   community_plugin_chef
   community_plugin_knife
   community_plugin_ohai
   community_plugin_report_handler
   config
   config_rb_analytics
   config_rb_chef_server
   config_rb_chef_server_optional_settings
   config_rb_chef_server_enterprise
   config_rb_chef_server_enterprise_optional_settings
   config_rb_chef_sync
   config_rb_client
   config_rb_knife
   config_rb_knife_optional_settings
   config_rb_manage
   config_rb_metadata
   config_rb_metadata
   config_rb_policyfile
   config_rb_push_jobs_server
   config_rb_server
   config_rb_server_optional_settings
   config_rb_solo
   config_rb_supermarket
   config_yml_kitchen
   containers
   cookbooks
   ctl_analytics
   ctl_chef
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_init
   ctl_chef_server
   ctl_chef_shell
   ctl_chef_solo
   ctl_chef_sync
   ctl_kitchen
   ctl_ohai
   ctl_opscode_expander
   ctl_private_chef
   ctl_push_jobs_client
   ctl_reporting
   ctl_supermarket
   debug
   dsl_recipe
   dsl_recipe_helper_windows_platform
   dsl_recipe_method_attribute
   dsl_recipe_method_cookbook_name
   dsl_recipe_method_data_bag
   dsl_recipe_method_data_bag_item
   dsl_recipe_method_platform
   dsl_recipe_method_platform_family
   dsl_recipe_method_reboot_pending
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
   errors
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
   essentials_nodes_bootstrap
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
   foodcritic
   getting_started
   getting_started_with_chef
   handlers
   images
   install
   install_analytics
   install_bootstrap
   install_dk
   install_omnibus
   install_push_jobs
   install_reporting
   install_server
   install_server_ha_aws
   install_server_ha_drbd
   install_server_post
   install_server_pre
   install_server_tiered
   install_windows
   junos
   just_enough_ruby_for_chef
   kitchen
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
   lwrp
   lwrp_custom
   lwrp_custom_provider
   lwrp_custom_provider_ruby
   lwrp_custom_resource
   lwrp_custom_resource_library
   lwrp_windows
   manage
   migrate_to_enterprise
   ohai
   ohai_custom
   openstack
   page_not_found
   plugin_kitchen_vagrant
   plugin_knife
   plugin_knife_authenticated_requests
   plugin_knife_azure
   plugin_knife_bluebox
   plugin_knife_bluelock
   plugin_knife_container
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
   plugin_knife_supermarket
   plugin_knife_terremark
   plugin_knife_vcloud
   plugin_knife_windows
   policy
   provisioning
   push_jobs
   reporting
   release_notes
   releases
   resource
   resource_apt_package
   resource_bash
   resource_batch
   resource_bff_package
   resource_breakpoint
   resource_chef_acl
   resource_chef_client
   resource_chef_container
   resource_chef_data_bag
   resource_chef_data_bag_item
   resource_chef_environment
   resource_chef_gem
   resource_chef_group
   resource_chef_handler
   resource_chef_mirror
   resource_chef_node
   resource_chef_organization
   resource_chef_role
   resource_chef_user
   resource_common
   resource_container_service
   resource_cookbook_file
   resource_cron
   resource_csh
   resource_deploy
   resource_directory
   resource_dpkg_package
   resource_dsc_mof
   resource_dsc_resource
   resource_dsc_script
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
   resource_homebrew_package
   resource_http_request
   resource_ifconfig
   resource_ips_package
   resource_link
   resource_load_balancer
   resource_log
   resource_machine
   resource_machine_batch
   resource_machine_execute
   resource_machine_file
   resource_machine_image
   resource_macports_package
   resource_mdadm
   resource_mount
   resource_ohai
   resource_package
   resource_pacman_package
   resource_perl
   resource_portage_package
   resource_powershell_script
   resource_private_key
   resource_public_key
   resource_python
   resource_reboot
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
   resource_windows_package
   resource_windows_service
   resource_yum
   runbook
   security_notes
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
   server_manage_clients
   server_manage_cookbooks
   server_manage_data_bags
   server_manage_environments
   server_manage_nodes
   server_manage_reports
   server_manage_roles
   server_monitor
   server_orgs
   server_replication
   server_security
   server_services
   server_tuning
   server_types
   server_users
   server_webui_tasks
   style_guide
   supermarket
   supported_platforms
   upgrade_server
   upgrade_server_ha
   upgrade_server_ha_notes
   upgrade_server_open_source
   upgrade_server_open_source_notes
   upgrade_server_standalone
   upgrade_server_standalone_notes
   verify_packages
   windows

