.. This is an included how-to. 

The following example shows how to use a case statement to check the platform, and for certain platforms send a notification immediately after installing the ``package_b`` package that will generate a module list:

.. code-block:: ruby

   case node[:platform]
     when 'debian', 'ubuntu'
       package 'package_a' do
         action :install
       end
     when 'centos', 'redhat', 'fedora'
       package 'package_b' do
         action :install
         notifies :run, resources(:execute => 'generate-module-list'), :immediately
       end
   end
