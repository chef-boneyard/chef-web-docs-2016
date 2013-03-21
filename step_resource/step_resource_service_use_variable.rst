.. This is an included how-to. 

The following example shows how to install |crond| using two |chef| resources and a variable:

.. code-block:: ruby

   cron_package = case node['platform']
     when "redhat", "centos", "scientific", "fedora", "amazon"
       node['platform_version'].to_f >= 6.0 ? "cronie" : "vixie-cron"
     else
       "cron"
     end
   
   package cron_package do
     action :install
   end
   
   service "crond" do
     case node['platform']
     when "redhat", "centos", "scientific", "fedora", "amazon"
       service_name "crond"
     when "debian", "ubuntu", "suse"
       service_name "cron"
     end
     action [:start, :enable]
   end

where

* ``cron_package`` is a variable that is used to identify which platforms apply to which install packages
* ``package`` uses the ``cron_package`` variable to determine how to install |crond| on various nodes (with various platforms)
* ``service`` enables the |crond| service on nodes that have |redhat|, |centos|, |redhat enterprise linux|, |fedora|, or |amazon aws|, and the |cron| service on nodes that run |debian|, |ubuntu|, or |suse|.

.. note:: This example comes from the following cookbook on |github|: https://github.com/opscode-cookbooks/cron.
