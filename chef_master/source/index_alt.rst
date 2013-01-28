=====================================================
Chef Documentation
=====================================================

Everything you need to know about Chef ...
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

Getting Started
-----------------------------------------------------
* **From the beginning:** overview (long) | overview (short)
* **Using Ruby:** Just Enough Ruby for Chef
* **Tutorial:** part 1 | part 2 | part 3 | part 4
* **Common scenarios:** scenario | scenario | scenario
* **Advanced scenarios:** scenario | scenario | scenario

The workstation
-----------------------------------------------------
* **The basics:** overview | repository
* **Knife:** about | common options --- **commands:** :doc:`bootstrap </knife_bootstrap>` | :doc:`client </knife_client>` | :doc:`configure </knife_configure>` | :doc:`cookbook </knife_cookbook>` | :doc:`cookbook site </knife_cookbook_site>` | :doc:`data bag </knife_data_bag>` | :doc:`delete </knife_delete>` | :doc:`diff </knife_diff>` | :doc:`download </knife_download>` | :doc:`environment </knife_environment>` | :doc:`exec </knife_exec>` | :doc:`index rebuild </knife_index_rebuild>` | :doc:`list </knife_list>` | :doc:`node </knife_node>` | :doc:`raw </knife_raw>` | :doc:`recipe list </knife_recipe_list>` | :doc:`role </knife_role>` | :doc:`search </knife_search>` | :doc:`show </knife_show>` | :doc:`ssh </knife_ssh>` | :doc:`status </knife_status>` | :doc:`tag </knife_tag>` | :doc:`upload </knife_upload>`
* **Plugins:** about | common options --- **commands:** :doc:`azure </plugin_knife_azure>` | :doc:`bluebox </plugin_knife_bluebox>` | :doc:`bluelock </plugin_knife_bluelock>` | :doc:`ec2 </plugin_knife_ec2>` | :doc:`eucalyptus </plugin_knife_eucalyptus>` | :doc:`google </plugin_knife_google>` | :doc:`hp </plugin_knife_hp>` | :doc:`linode </plugin_knife_linode>` | :doc:`openstack </plugin_knife_openstack>` | :doc:`rackspace </plugin_knife_rackspace>` | :doc:`terremark </plugin_knife_terremark>` | :doc:`windows </plugin_knife_windows>`
* **Configure:** install | sync repository | knife.rb | metadata.rb

The server
-----------------------------------------------------
* **The basics:** Hosted Chef vs. Private Chef vs. Open Source Chef
* **The node object:** about | run-lists | deep merge | attributes
* **Search:** about | indexes | query syntax | keys | targets
* **Policy:** about | data bags | environments | roles
* **Configure:** Hosted Chef | Private Chef | Open Source Chef | server.rb | solo.rb | solr.rb
* **Manage:** Hosted Chef | Private Chef | Open Source Chef
* **APIs:** cookbooks site | chef server
* **Tools:** private-chef-ctl | orgmapper 

The nodes
-----------------------------------------------------
* **The basics:** overview | chef-client | the Chef run | ohai
* **Configure:** bootstrap | exceptions and reports | client.rb
* **Tools:** chef-client | 

Cookbooks
-----------------------------------------------------
* **The basics:** overview | directory structure
* **Community cookbooks:** cookbooks.opscode.com --- **important cookbooks:** chef_handler | cookbook | cookbook | cookbook | ... more cookbooks
* **Recipes:** Syntax | DSL | use data bags | get search results | use ruby | include recipes | dependencies | exceptions | apply run-lists 
* **Recipe DSL methods:** about --- **methods:** attribute? | data_bag | data_bag_item | platform? | platform_family? | resources | search | tag | tagged? | untag | value_for_platform | value_for_platform_family
* **Resources:** about | common options --- **resources:**  :doc:`batch </resource_batch>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`scm </resource_scm>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`template </resource_template>` | :doc:`user </resource_user>`
* **Attributes:** Overview | types | persistence | precedence | automatic | notation
* **Other components:** definitions | files | libraries | lwrp | metadata | node objects | templates | versions

Single-page HTML Topics
-----------------------------------------------------
* `Chef Resources <http://docs.opscode.com/chef/resources.html>`_







