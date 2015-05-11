=====================================================
All about the |chef dk_title| ...  
=====================================================

.. include:: ../../includes_chef_dk/includes_chef_dk.rst

Getting Started
=====================================================
.. include:: ../../includes_chef/includes_chef_index.rst

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/chef_overview.html">An Overview of Chef</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/install_dk.html">Install the Chef DK</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/getting_started.html">Getting Started with the Chef DK and Kitchen</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/ruby.html">Using Ruby</a> </br>

.. note:: See this blog post by Irving Popovetsky about running the Chef DK on Windows: https://www.chef.io/blog/2014/11/04/the-chefdk-on-windows-survival-guide/.

.. note:: The topic "Getting Started with the Chef DK and Kitchen" is a work in progress. It needs some editing, but you should be able to install the Chef DK and then configure Kitchen to build CentOS and Ubuntu instances, and then converge a node using the NTP cookbook. More sections are planned for future updates that will include more scenarios for Kitchen, new scenarios for ChefSpec, Berkshelf, and Chef policy. Feedback on the getting started page may be sent to docs@chef.io.

About Workflow
-----------------------------------------------------
.. include:: ../../includes_chef_dk/includes_chef_dk_workflow.rst

Tools
=====================================================
.. include:: ../../includes_chef_dk/includes_chef_dk_tools.rst

.. include:: ../../includes_chef_dk/includes_chef_dk_tools_main.rst

|chef dk_title| Tools
-----------------------------------------------------
The following tools are available only in the |chef dk|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/ctl_chef.html">chef (executable)</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/policy.html">Policy</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/config_rb_policyfile.html">Policyfile.rb</a> </br>

|chef provisioning_title|
-----------------------------------------------------
The following resources are part of |chef provisioning| and are now available in the |chef dk|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/resource_machine.html">machine</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/resource_machine_batch.html">machine_batch</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/resource_machine_execute.html">machine_execute</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/resource_machine_file.html">machine_file</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/resource_machine_image.html">machine_image</a> </br>
   
Community Tools
-----------------------------------------------------
The following tools have been developed by members of the |chef| community. These tools are considered to be a useful part of the |chef| workflow and have been packaged as part of the |chef dk|. (They are all available independently of the |chef dk|, as well.) The use of these tools as part of your workflow is recommended, but at the same time is completely optional. Use them in the way that makes sense for your organization:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/berkshelf.html">Berkshelf</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/chef_vault.html">chef-vault</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/chefspec.html">ChefSpec</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/foodcritic.html">Foodcritic</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/kitchen.html">Kitchen</a> </br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/ctl_kitchen.html">kitchen (the command-line executable for Kitchen)</a> </br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/config_yml_kitchen.html">kitchen.yml (the configuration file for Kitchen)</a> </br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/plugin_kitchen_vagrant.html">kitchen-vagrant (the default driver plugin for Kitchen)</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/devkit/rubocop.html">RuboCop</a> </br>



.. Hide the TOC from this file.

.. toctree::
   :hidden:

   berkshelf
   chef_overview
   chef_vault
   chefspec
   config_rb_policyfile
   config_yml_kitchen
   ctl_chef
   ctl_kitchen
   foodcritic
   getting_started
   install_dk
   install_dk_windows
   kitchen
   plugin_kitchen_vagrant
   policy
   rubocop
   ruby
   serverspec
