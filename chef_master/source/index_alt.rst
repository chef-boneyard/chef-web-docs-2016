=====================================================
Chef Documentation
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

Getting Started
=====================================================
* **From the beginning:** overview (long) | overview (short)
* **Using Ruby:** Just Enough Ruby for Chef
* **Tutorial:** 1 | 2 | 3 | 4
* **Common scenarios:** scenario | scenario | scenario
* **Advanced scenarios:** scenario | scenario | scenario

The workstation
=====================================================
* **The basics:** overview | repository
* **Knife:** about | common options --- **commands:** bootstrap | client | configure | cookbook | cookbook site | data bag | delete | diff | download | environment | exec | index rebuild | list | node | raw | recipe list | role | search | show | ssh | status | tag | upload
* **Plugins:** about | common options --- **commands:** azure | bluebox | bluelock | ec2 | eucalyptus | google | hp | linode | openstack | rackspace | terremark | windows
* **Configure:** install | sync repository | knife.rb | metadata.rb

The server
=====================================================
* **The basics:** Hosted Chef vs. Private Chef vs. Open Source Chef
* **The node object:** about | run-lists | deep merge | attributes
* **Search:** about | indexes | query syntax | keys | targets
* **Policy:** about | data bags | environments | roles
* **Configure:** Hosted Chef | Private Chef | Open Source Chef | server.rb | solo.rb | solr.rb
* **Manage:** Hosted Chef | Private Chef | Open Source Chef
* **APIs:** cookbooks site | chef server
* **Tools:** private-chef-ctl | orgmapper 

The nodes
=====================================================
* **The basics:** overview | chef-client | the Chef run | ohai
* **Configure:** bootstrap | exceptions and reports | client.rb
* **Tools:** chef-client | 

Cookbooks
=====================================================
* **The basics:** overview | directory structure
* **Community cookbooks:** cookbooks.opscode.com | chef_handler | cookbook | cookbook | cookbook | more cookbooks
* **Recipes:** Syntax | DSL | use data bags | get search results | use ruby | include recipes | dependencies | exceptions | apply run-lists 
* **Recipe DSL methods:** about --- **methods:** attribute? | data_bag | data_bag_item | platform? | platform_family? | resources | search | tag | tagged? | untag | value_for_platform | value_for_platform_family
* **Resources:** about | common options --- **resources:**  :doc:`batch </resource_batch>` | :doc:`cookbook_file </resource_cookbook_file>` | :doc:`cron </resource_cron>` | :doc:`deploy </resource_deploy>` | :doc:`directory </resource_directory>` | :doc:`env </resource_env>` | :doc:`erl_call </resource_erlang_call>` | :doc:`execute </resource_execute>` | :doc:`file </resource_file>` | :doc:`group </resource_group>` | :doc:`http_request </resource_http_request>` | :doc:`ifconfig </resource_ifconfig>` | :doc:`link </resource_link>` | :doc:`log </resource_log>` | :doc:`mdadm </resource_mdadm>` | :doc:`mount </resource_mount>` | :doc:`ohai </resource_ohai>` | :doc:`package </resource_package>` | :doc:`powershell_script </resource_powershell_script>` | :doc:`registry_key </resource_registry_key>` | :doc:`remote_directory </resource_remote_directory>` | :doc:`remote_file </resource_remote_file>` | :doc:`route </resource_route>` | :doc:`ruby_block </resource_ruby_block>` | :doc:`scm </resource_scm>` | :doc:`script </resource_script>` | :doc:`service </resource_service>` | :doc:`template </resource_template>` | :doc:`user </resource_user>`
* **Attributes:** Overview | types | persistence | precedence | automatic | notation
* **Other components:** definitions | files | libraries | lwrp | metadata | node objects | templates | versions

Single-page HTML Topics
=====================================================
* `Chef Resources <http://docs.opscode.com/chef/resources.html>`_







