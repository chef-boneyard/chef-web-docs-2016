=====================================================
machine
=====================================================

.. warning:: This resource is only available when `chef-metal <https://github.com/opscode/chef-metal>`_ is installed. chef-metal is a framework that allows clusters to be managed by the |chef client| and the |chef server| in the same way nodes are managed: with recipes. Use chef-metal to describe, version, deploy, and manage clusters of any size and complexity using a common set of tools.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_machine.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_machine_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_machine_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_machine_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_machine_providers.rst

Examples
=====================================================
|generic resource statement|

**Build machines dynamically**

.. code-block:: ruby

   machine 'mario' do
     recipe 'postgresql'
     recipe 'mydb'
     tag 'mydb_master'
   end
   
   num_webservers = 1
   
   1.upto(num_webservers) do |i|
     machine "luigi#{i}" do
       recipe 'apache'
       recipe 'mywebapp'
     end
   end
