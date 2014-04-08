=====================================================
All about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst


Getting Started
=====================================================
**From the beginning:** :doc:`Overview (long) </chef_overview>` | :doc:`Overview (short) </chef_quick_overview>` | :doc:`Why Chef? </chef_why>`

**Key concepts:** :doc:`Workstations </chef_overview_workstation>` | :doc:`The Server </chef_overview_server>` | :doc:`Nodes </chef_overview_nodes>` | :doc:`Cookbooks </chef_overview_cookbooks>` | :doc:`Attributes </chef_overview_attributes>` | :doc:`Resources and Providers </resource>` | :doc:`LWRPs (Custom Resources) </lwrp_custom>` | :doc:`Knife </knife>`

**Using Ruby:** :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`

.. include:: ../../includes_chef/includes_chef_index_getchef.rst

.. include:: ../../includes_chef/includes_chef_index_learnchef.rst

**Docs for Current Versions:** `chef-client <http://docs.opscode.com/client/>`__ | `Open Source Chef Server <http://docs.opscode.com/open_source/>`_ | `Enterprise Chef Server <http://docs.opscode.com/enterprise/>`_ | `Ohai 7 <http://docs.opscode.com/release/ohai-7/>`_ | :doc:`Release Notes for chef-client 11.12 </release_notes>`

**Docs for Older Versions:** `chef-client 11.10 <http://docs.opscode.com/release/11-10/>`_ | `chef-client 11.8 <http://docs.opscode.com/release/11-8/>`_ | `chef-client 11.6 <http://docs.opscode.com/release/11-6/>`_ | `chef-client 11.4 <http://docs.opscode.com/release/11-4/>`_ | `chef-client 11.2 <http://docs.opscode.com/release/11-2/>`_ | `chef-client 11.0 <http://docs.opscode.com/release/11-0/>`_ | `chef-client 10.latest <http://docs.opscode.com/release/10/>`_ | `Private Chef 1.4.x <http://docs.opscode.com/server/>`_ | :doc:`Documentation Feedback </feedback>`


The Community
=====================================================
.. include:: ../../includes_chef/includes_chef_index_community.rst

The Workstation
=====================================================
**The Basics:** :doc:`About the Workstation </chef_overview_workstation>` | :doc:`The chef-repo </essentials_repository>` | :doc:`Knife </knife>` | :doc:`Debug Recipes </chef_shell>`

**Install:** :doc:`Install the chef-client on a Workstation </install_workstation>` | :doc:`Bootstrap a Node </install_bootstrap>` | :doc:`Create and Sync the chef-repo </essentials_repository_create>`

**Knife:** :doc:`About Knife </knife>` | :doc:`Common Options </knife_common_options>` | :doc:`Working with Knife </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`deps </knife_deps>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`edit </knife_edit>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`ssl check </knife_ssl_check>` | :doc:`ssl fetch </knife_ssl_fetch>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` | :doc:`user </knife_user>` | :doc:`xargs </knife_xargs>` --- **Single Page:** `Knife Reference <http://docs.opscode.com/chef/knife.html>`_ | `Knife Quick Reference <http://docs.opscode.com/_images/qr_knife_web.png>`_ (image)

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

**Install Scenarios:** :doc:`Standalone </install_server_standalone>` | :doc:`Scaled Back End </install_server_be>` | :doc:`Scaled Front End </install_server_fe>` | :doc:`Scaled Front and Back Ends </install_server_febe>` | :doc:`Migrate to Enterprise Chef from Open Source Chef </migrate_to_enterprise>` | :doc:`Upgrade for Standalone </upgrade_server_standalone>` | :doc:`Upgrade for High Availability </upgrade_server_ha>`

**Install Options:** :doc:`Active Directory / LDAP </install_server_ldap>` | :doc:`Create Users </install_server_users>` | :doc:`Create Organizations </install_server_orgs>`

**Add-ons:** :doc:`Chef Manage </manage>` | :doc:`Reporting </reporting>` | :doc:`Push Jobs </push_jobs>`

**Manage Server:** :doc:`Backup and Restore </server_backup_restore>` | :doc:`Firewalls and Ports </server_firewalls_and_ports>` | :doc:`High Availability </server_high_availability>` | :doc:`LDAP </server_ldap>` | :doc:`Logs </server_logs>` | :doc:`Monitor </server_monitor>` | :doc:`Organizations, Groups, and Users </server_orgs>` | :doc:`Security </server_security>` | :doc:`Services </server_services>` | :doc:`Performance Tuning </server_tuning>` | :doc:`Users </server_users>`

**Chef Manager Web User Interface:** :doc:`Clients </server_manage_clients>` | :doc:`Cookbooks </server_manage_cookbooks>` | :doc:`Data Bags </server_manage_data_bags>` | :doc:`Environments </server_manage_environments>` | :doc:`Nodes </server_manage_nodes>` | :doc:`Reports </server_manage_reports>` | :doc:`Roles </server_manage_roles>`

**Settings and Tools:** :doc:`private-chef.rb </config_rb_chef_server_enterprise>` | :doc:`private-chef-ctl </ctl_private_chef>` | :doc:`manage.rb </config_rb_manage>`

|chef server osc|
-----------------------------------------------------
|chef server osc| is the open source |chef server| that shares many of the same capabilities as the |chef server oec|.

**Install:** :doc:`Install the Open Source Chef Server </install_server>` | :doc:`Scenario: Install the Open Source Chef Server on a Virtual Machine </install_server_scenario_vm>` | :doc:`Download the Open Source Chef Server with Omnitruck API </api_omnitruck>`  | :doc:`Upgrade </upgrade_server_open_source>`

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

**Install:** :doc:`About Bootstrap </essentials_nodes_bootstrap>` | :doc:`Install the chef-client on a Node (Bootstrap) </install_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`Install the chef-client on Windows </install_windows>` | :doc:`Download the chef-client with Omnitruck API </api_omnitruck>`

**Ohai:** :doc:`About Ohai 7 </ohai>` | :doc:`Custom Ohai 7 Plugins </ohai_custom>` | `Ohai 6 <http://docs.opscode.com/release/ohai-6/>`_

**Settings:** :doc:`client.rb </config_rb_client>` | :doc:`solo.rb </config_rb_solo>`

**Command-line Tools:** :doc:`chef-client (executable) </ctl_chef_client>` | :doc:`chef-shell (executable) </ctl_chef_shell>` | :doc:`chef-solo (executable) </ctl_chef_solo>` | :doc:`ohai (executable) </ctl_ohai>`


Cookbooks
=====================================================
**The Basics:** :doc:`About Cookbooks </essentials_cookbooks>` | :doc:`About Recipes </essentials_cookbook_recipes>` | :doc:`About Attribute Files </essentials_cookbook_attribute_files>` |  :doc:`Handlers </handlers>` | `Popular Cookbooks <https://github.com/opscode-cookbooks>`_

**LWRPs:** :doc:`About Custom LWRPs </lwrp_custom>` | :doc:`Lightweight Resources </lwrp_custom_resource>` | :doc:`Lightweight Providers w/Chef Resources </lwrp_custom_provider>` | :doc:`Lightweight Providers w/Custom Ruby </lwrp_custom_provider_ruby>`

**Other Cookbook Components:** :doc:`About Definitions </essentials_cookbook_definitions>` | :doc:`About Files </essentials_cookbook_files>` | :doc:`About Libraries </essentials_cookbook_libraries>` | :doc:`About Cookbook Metadata </essentials_cookbook_metadata>` | :doc:`About Templates </essentials_cookbook_templates>` | :doc:`About Versions </essentials_cookbook_versions>`

**The Recipe DSL:** :doc:`About the Recipe DSL </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`cookbook_name </dsl_recipe_method_cookbook_name>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`recipe_name </dsl_recipe_method_recipe_name>` |  :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` | :doc:`Windows Platform Helper Methods </dsl_recipe_helper_windows_platform>` --- **Single Page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_

**Resources:** :doc:`About Resources </resource>` | :doc:`Common Functionality </resource_common>` --- **Resources:** :doc:`apt_package </resource_apt_package>` | :doc:`bash </resource_bash>` | :doc:`batch </resource_batch>` | :doc:`breakpoint </resource_breakpoint>` | :doc:`chef_gem </resource_chef_gem>` | :doc:`chef_handler </resource_chef_handler>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`dpkg_package </resource_dpkg_package>` | :doc:`easy_install_package </resource_easy_install_package>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`gem_package </resource_gem_package>` | :doc:`git </resource_git>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`rpm_package </resource_rpm_package>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`subversion </resource_subversion>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` | :doc:`yum_package </resource_yum>` --- **Single Page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_

**Community Resources (LWRPs):** :doc:`About LWRPs </lwrp>` | :doc:`Common Functionality </resource_common>` --- **LWRPs:**  `apt <https://github.com/opscode-cookbooks/apt>`_ | `aws <https://github.com/opscode-cookbooks/aws>`_ | `bluepill <https://github.com/opscode-cookbooks/bluepill>`_ | :doc:`chef_handler </lwrp_chef_handler>` | `daemontools <https://github.com/opscode-cookbooks/daemontools>`_ | `djbdns <https://github.com/opscode-cookbooks/djbdns>`_ | `dmg <https://github.com/opscode-cookbooks/dmg>`_ | `dynect <https://github.com/opscode-cookbooks/dynect>`_ | `firewall <https://github.com/opscode-cookbooks/firewall>`_ | `freebsd <https://github.com/opscode-cookbooks/freebsd>`_ | `gunicorn <https://github.com/opscode-cookbooks/gunicorn>`_ | `homebrew <https://github.com/opscode-cookbooks/homebrew>`_ | `iis <https://github.com/opscode-cookbooks/iis>`_ | `lvm <https://github.com/opscode-cookbooks/lvm>`_ | `maven <https://github.com/opscode-cookbooks/maven>`_ | `nginx <https://github.com/opscode-cookbooks/nginx>`_ | `omnibus <https://github.com/opscode-cookbooks/omnibus>`_ | `openssh <https://github.com/opscode-cookbooks/openssh>`_ | `php <https://github.com/opscode-cookbooks/php>`_ | `powershell <https://github.com/opscode-cookbooks/powershell>`_ | `rabbitmq <https://github.com/opscode-cookbooks/rabbitmq>`_ | `sudo <https://github.com/opscode-cookbooks/sudo>`_ | `transmission <https://github.com/opscode-cookbooks/transmission>`_ | `webpi <https://github.com/opscode-cookbooks/webpi>`_ | `windows <https://github.com/opscode-cookbooks/windows>`_ | :doc:`yum </lwrp_yum>`


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
   azure_portal
   berkshelf
   breaking_changes_chef_11
   chef_client
   chef_cookbooks
   chef_cookbooks_chef_handler
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
   config_rb_chef_server
   config_rb_chef_server_optional_settings
   config_rb_chef_server_enterprise
   config_rb_chef_server_enterprise_optional_settings
   config_rb_client
   config_rb_knife
   config_rb_knife_optional_settings
   config_rb_manage
   config_rb_metadata
   config_rb_metadata
   config_rb_push_jobs_server
   config_rb_solo
   config_yml_kitchen
   ctl_chef
   ctl_chef_apply
   ctl_chef_client
   ctl_chef_server
   ctl_chef_shell
   ctl_chef_solo
   ctl_kitchen
   ctl_ohai
   ctl_reporting
   ctl_private_chef
   ctl_push_jobs_client
   debug
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
   getting_started_with_chef
   handlers
   images
   install
   install_bootstrap
   install_manage
   install_omnibus
   install_push_jobs
   install_reporting
   install_server
   install_server_be
   install_server_fe
   install_server_febe
   install_server_hosted
   install_server_ldap
   install_server_oec
   install_server_orgs
   install_server_pre
   install_server_scenario_vm
   install_server_standalone
   install_server_users
   install_windows
   install_workstation
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
   lwrp_apt
   lwrp_aws
   lwrp_bluepill
   lwrp_chef_handler
   lwrp_custom
   lwrp_custom_provider
   lwrp_custom_provider_ruby
   lwrp_custom_resource
   lwrp_custom_resource_library
   lwrp_daemontools
   lwrp_djbdns
   lwrp_dmg
   lwrp_dynect
   lwrp_firewall
   lwrp_freebsd
   lwrp_gunicorn
   lwrp_homebrew
   lwrp_iis
   lwrp_maven
   lwrp_nagios
   lwrp_netdev
   lwrp_pacman
   lwrp_php
   lwrp_powershell
   lwrp_python
   lwrp_rabbitmq
   lwrp_riak
   lwrp_samba
   lwrp_sudo
   lwrp_supervisor
   lwrp_transmission
   lwrp_users
   lwrp_webpi
   lwrp_windows
   lwrp_yum
   manage
   migrate_to_enterprise
   ohai
   ohai_custom
   openstack
   orgmapper
   plugin_knife
   push_jobs
   reporting
   release_notes
   resource
   resource_apt_package
   resource_bash
   resource_batch
   resource_bff_package
   resource_breakpoint
   resource_chef_client
   resource_chef_data_bag
   resource_chef_data_bag_item
   resource_chef_environment
   resource_chef_gem
   resource_chef_handler
   resource_chef_node
   resource_chef_role
   resource_chef_user
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
   resource_private_key
   resource_public_key
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
   server_security
   server_services
   server_tuning
   server_types
   server_users
   server_webui_tasks
   style_guide
   supported_platforms
   upgrade_server
   upgrade_server_ha
   upgrade_server_ha_notes
   upgrade_server_open_source
   upgrade_server_standalone
   upgrade_server_standalone_notes
   windows
