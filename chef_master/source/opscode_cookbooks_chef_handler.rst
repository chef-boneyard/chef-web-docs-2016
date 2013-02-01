=====================================================
chef_handler Cookbook
=====================================================

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler.rst

.. note:: This cookbook is available from |github|: https://github.com/opscode-cookbooks/chef_handler.

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_attributes.rst

chef_handler LWRP
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Usage
-----------------------------------------------------
The following sections describe the usage options that are available in this cookbook:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Usage
     - Description
   * - ``default``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_default.rst
   * - ``json_file``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_json_file.rst

Examples
-----------------------------------------------------
.. This is a temporary home for examples for this cookbook.

**Register the Chef::Handler::JsonFile handler**

.. code-block:: ruby

   chef_handler "Chef::Handler::JsonFile" do
     source "chef/handler/json_file"
     arguments :path => '/var/chef/reports'
     action :enable
   end

**Register the Chef::Handler::JsonFile handler during the compile phase**

.. code-block:: ruby

   chef_handler "Chef::Handler::JsonFile" do
     source "chef/handler/json_file"
     arguments :path => '/var/chef/reports'
     action :nothing
   end.run_action(:enable)

**Handle exceptions only**

.. code-block:: ruby

   chef_handler "Chef::Handler::JsonFile" do
     source "chef/handler/json_file"
     arguments :path => '/var/chef/reports'
     supports :exception => true
     action :enable
   end

**Enable the CloudkickHandler**

.. code-block:: ruby

   chef_handler "CloudkickHandler" do
     source "#{node['chef_handler']['handler_path']}/cloudkick_handler.rb"
     arguments [node['cloudkick']['oauth_key'], node['cloudkick']['oauth_secret']]
     action :enable
   end











