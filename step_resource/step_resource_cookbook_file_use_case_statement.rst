.. This is an included how-to. 

The following example shows how a ``case`` statement can be used to handle a situation where an application needs to be installed on multiple platforms, but the where the install directories are different, depending on the platform:

.. code-block:: ruby

   cookbook_file "application.pm" do
     case node[:platform]
     when "centos","redhat"
       path "/usr/lib/version/1.2.3/dir/application.pm"
     when "arch"
       path "/usr/share/version/core_version/dir/application.pm"
     else
       path "/etc/version/dir/application.pm"
     end
     source "application-#{node[:languages][:perl][:version]}.pm"
     owner "root"
     group "root"
     mode 0644
   end
