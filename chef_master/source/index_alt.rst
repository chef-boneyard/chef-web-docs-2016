=====================================================
Everything you need to know about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

Getting Started
=====================================================
* **From the beginning:** :doc:`overview (long) </chef_overview>` | :doc:`overview (short) </chef_quick_overview>`
* **Key concepts:** :doc:`workstation </essentials_workstation>` | :doc:`server </essentials_server>` | :doc:`nodes </essentials_nodes>` | :doc:`cookbooks </essentials_cookbooks>` | :doc:`resources and providers </essentials_cookbook_resources>` | :doc:`about </knife>`
* **Using Ruby:** Just Enough Ruby for Chef
* **Tutorial:** Part 1 | Part 2 | Part 3 | Part 4
* **Quick starts:** aws | ubuntu | bootstrap | etc
* **Common scenarios:** :doc:`install Chef on a workstation </install>` | scenario | scenario
* **Advanced scenarios:** scenario | scenario | scenario

The workstation
=====================================================
* **The basics:** :doc:`overview </essentials_workstation>` | :doc:`repository </essentials_repository>` | :doc:`about </knife>`
* **Knife:** :doc:`about </knife>` | :doc:`common options </knife_common_options>` | :doc:`working with </knife_using>` --- **Commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>` --- **Single page:** `Knife Reference <http://docs.opscode.com/chef/knife.html>`_ | `Knife Quick Reference (image) <http://docs.opscode.com/_images/qr_knife_web.png>`_
* **Plugins:** :doc:`about </plugin_knife>` | :doc:`common options </knife_common_options>` --- **Commands:** :doc:`azure </plugin_knife_azure>` | :doc:`bluebox </plugin_knife_bluebox>` | :doc:`bluelock </plugin_knife_bluelock>` | :doc:`ec2 </plugin_knife_ec2>` | :doc:`eucalyptus </plugin_knife_eucalyptus>` | :doc:`google </plugin_knife_google>` | :doc:`hp </plugin_knife_hp>` | :doc:`linode </plugin_knife_linode>` | :doc:`openstack </plugin_knife_openstack>` | :doc:`rackspace </plugin_knife_rackspace>` | :doc:`terremark </plugin_knife_terremark>` | :doc:`windows </plugin_knife_windows>` --- **Single page:** `Knife Plugins Reference <http://docs.opscode.com/chef/knife_plugins.html>`_
* **Configure:** :doc:`install </install>` | :doc:`create and sync repository </essentials_repository_create>`
* **Settings:** :doc:`knife.rb </config_rb_knife>` | :doc:`metadata.rb </config_rb_metadata>`



The Chef server
=====================================================
* **The basics:** :doc:`about </chef_overview_server>` | :doc:`Hosted Chef </chef_overview_server_hosted>` vs. :doc:`Private Chef </chef_overview_server_private>` vs. :doc:`Open Source Chef </chef_overview_server_open_source>`
* **The node object:** :doc:`about </essentials_node_object>` | :doc:`run-lists </essentials_node_object_run_lists>` | :doc:`deep merge </essentials_node_object_deep_merge>`
* **Search:** :doc:`about </essentials_search>` | :doc:`indexes </essentials_search_indexes>` | :doc:`keys (field names) </essentials_search_keys>` | :doc:`operators </essentials_search_boolean_operators>` | :doc:`patterns </essentials_search_patterns>` | :doc:`query syntax </essentials_search_query_syntax>` | :doc:`special characters </essentials_search_special_characters>` | :doc:`targets </essentials_search_targets>`
* **Policy:** :doc:`about </essentials_policy>` | :doc:`data bags </essentials_data_bags>` | :doc:`environments </essentials_environments>` | :doc:`roles </essentials_roles>`
* **Settings:** :doc:`server.rb </config_rb_server>` | :doc:`solo.rb </config_rb_solo>` | :doc:`solr.rb </config_rb_solr>`
* **Manage:** :doc:`Hosted Chef </manage_server_hosted>` | Private Chef | Open Source Chef
* **APIs:** :doc:`cookbooks site </api_cookbooks_site>` | :doc:`chef server </api_chef_server>`
* **Tools:** private-chef-ctl | orgmapper 




The nodes
=====================================================
* **The basics:** :doc:`about </essentials_nodes>` | :doc:`chef-client (agent) </essentials_chef_client>` | :doc:`the Chef run </essentials_nodes_chef_run>` | :doc:`ohai </ohai>`
* **Configure:** :doc:`install Chef on a node (bootstrap) </install_step_bootstrap>` and :doc:`knife bootstrap </knife_bootstrap>` | :doc:`exception and report handlers </essentials_handlers>`
* **Settings:** :doc:`client.rb </config_rb_client>`
* **Tools:** :doc:`chef-client (executable) </chef_client>`



Cookbooks
=====================================================
* **The basics:** :doc:`about </essentials_cookbooks>` | :doc:`directory structure </essentials_cookbook_directory>`
* **Community cookbooks:** :doc:`maintained by Opscode </opscode_cookbooks>` --- **Important cookbooks:** :doc:`chef_handler </opscode_cookbooks_chef_handler>` | cookbook | cookbook | cookbook | ... `more cookbooks <https://github.com/opscode-cookbooks>`_
* **Recipes:** :doc:`about </essentials_cookbook_recipes>` | :doc:`recipe DSL </dsl_recipe>` | :doc:`use data bags </essentials_cookbook_recipes_data_bags>` | :doc:`use search results </essentials_cookbook_recipes_search>` | :doc:`use ruby </essentials_cookbook_recipes_use_ruby>` | :doc:`include other recipes </essentials_cookbook_recipes_in_recipes>` | :doc:`dependencies </essentials_cookbook_recipes_cookbook_dependencies>` | :doc:`exception handlers </essentials_cookbook_recipes_handlers_and_logs>` | :doc:`apply to run-lists </essentials_cookbook_recipes_run_lists>`
* **The recipe DSL:** :doc:`about </dsl_recipe>` --- **Methods:** :doc:`attribute? </dsl_recipe_method_attribute>` | :doc:`data_bag </dsl_recipe_method_data_bag>` | :doc:`data_bag_item </dsl_recipe_method_data_bag>` | :doc:`platform? </dsl_recipe_method_platform>` | :doc:`platform_family? </dsl_recipe_method_platform_family>` | :doc:`registry_data_exists? </dsl_recipe_method_registry_data_exists>` | :doc:`registry_get_subkeys </dsl_recipe_method_registry_get_subkeys>` | :doc:`registry_get_values </dsl_recipe_method_registry_get_values>` | :doc:`registry_has_subkeys? </dsl_recipe_method_registry_has_subkeys>` | :doc:`registry_key_exists? </dsl_recipe_method_registry_key_exists>` | :doc:`registry_value_exists? </dsl_recipe_method_registry_value_exists>` | :doc:`resources </dsl_recipe_method_resources>` | :doc:`search </dsl_recipe_method_search>` | :doc:`tag </dsl_recipe_method_tag>` | :doc:`tagged? </dsl_recipe_method_tag>` | :doc:`untag </dsl_recipe_method_tag>` | :doc:`value_for_platform </dsl_recipe_method_value_for_platform>` | :doc:`value_for_platform_family </dsl_recipe_method_value_for_platform_family>` --- **Single page:** `Recipe DSL <http://docs.opscode.com/chef/dsl_recipe.html>`_
* **Resources and providers:** :doc:`about </resource>` --- **Common functionality:** :doc:`actions </resource_common_actions>` | :doc:`attributes </resource_common_attributes>` | :doc:`conditions </resource_common_conditionals>` | :doc:`notifications </resource_common_notifications>` | :doc:`relative paths </resource_common_relative_paths>` --- **Resources:**  :doc:`batch </resource_batch>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`scm </resource_scm>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`template </resource_template>` | :doc:`user </resource_user>` --- **Single page:** `Resources and Providers <http://docs.opscode.com/chef/resources.html>`_
* **Lightweight resources:** :doc:`about </lwrp>` --- **Common functionality:** :doc:`actions </resource_common_actions>` | :doc:`attributes </resource_common_attributes>` | :doc:`conditions </resource_common_conditionals>` | :doc:`notifications </resource_common_notifications>` | :doc:`relative paths </resource_common_relative_paths>` --- **from Opscode:**  :doc:`apt </lwrp_apt>` | :doc:`aws </lwrp_aws>` | :doc:`bluepill </lwrp_bluepill>` | :doc:`chef_handler </lwrp_chef_handler>` | :doc:`daemontools </lwrp_daemontools>` | :doc:`djbdns </lwrp_djbdns>` | :doc:`dmg </lwrp_dmg>` | :doc:`dynect </lwrp_dynect>` | :doc:`firewall </lwrp_firewall>` | :doc:`freebsd </lwrp_freebsd>` | :doc:`gunicorn </lwrp_gunicorn>` | :doc:`homebrew </lwrp_homebrew>` | :doc:`iis </lwrp_iis>` | :doc:`maven </lwrp_maven>` | :doc:`mysql </lwrp_mysql>` | :doc:`nagios </lwrp_nagios>` | :doc:`pacman </lwrp_pacman>` | :doc:`php </lwrp_php>` | :doc:`powershell </lwrp_powershell>` | :doc:`python </lwrp_python>` | :doc:`rabbitmq </lwrp_rabbitmq>` | :doc:`riak </lwrp_riak>` | :doc:`samba </lwrp_samba>` | :doc:`sudo </lwrp_sudo>` | :doc:`supervisor </lwrp_supervisor>` | :doc:`transmission </lwrp_transmission>` | :doc:`users </lwrp_users>` | :doc:`webpi </lwrp_webpi>` | :doc:`windows </lwrp_windows>` | :doc:`yum </lwrp_yum>` | :doc:`zenoss </lwrp_zenoss>` --- **Single page:** `Lightweight Resources <http://docs.opscode.com/chef/resources.html>`_
* **Attribute files:** :doc:`about </essentials_cookbook_attribute_files>` | :doc:`accessor methods </essentials_cookbook_attribute_files_accessor_methods>` | :doc:`attribute methods </essentials_cookbook_attribute_files_attribute_methods>` | :doc:`automatic </essentials_cookbook_attribute_files_attribute_automatic>` | :doc:`file ordering </essentials_cookbook_attribute_files_ordering>` | :doc:`notation </essentials_cookbook_attribute_files_attribute_notation>` | :doc:`persistence </essentials_cookbook_attribute_files_attribute_persistence>` | :doc:`precedence </essentials_cookbook_attribute_files_attribute_precedence>` | :doc:`reload from recipes </essentials_cookbook_attribute_files_reload>` | :doc:`types </essentials_cookbook_attribute_files_attribute_types>`
* **Other components of cookbooks:** :doc:`definitions </essentials_cookbook_definitions>` | :doc:`files </essentials_cookbook_files>` | :doc:`libraries </essentials_cookbook_libraries>` | :doc:`metadata </essentials_cookbook_metadata>` | :doc:`templates </essentials_cookbook_templates>` | :doc:`versions </essentials_cookbook_versions>`

