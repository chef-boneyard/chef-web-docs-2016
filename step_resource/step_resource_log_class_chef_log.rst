.. This is an included how-to. 

The following example shows two log entries, one created using ``Chef::Log`` and the other using the |resource log| resource. Only the log entry created by the |resource log| resource is built into the resource collection.

.. code-block:: ruby

   ...
   
   client_bin = find_chef_client
   Chef::Log.debug("Found chef-client in #{client_bin}")
   node.default['chef_client']['bin'] = client_bin
   create_directories
   
   log 'Using winsw_service on this Chef version is deprecated; use windows_service' do
     level :warn
     only_if { Gem::Requirement.new('>= 11.5').satisfied_by?(Gem::Version.new(::Chef::VERSION)) }
   end
   
   ...

This example can be found in the ``winsw_service.rb`` recipe of the `chef-client cookbook <https://github.com/opscode-cookbooks/chef-client>`_ that is maintained by |company_name|.
