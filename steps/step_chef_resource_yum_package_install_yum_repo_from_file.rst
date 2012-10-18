.. This is an included how-to. 

To install new |yum| repositories from a file, where the installation of the repository triggers a creation of the |yum| cache that forces the internal |chef| cache to reload:

.. code-block:: ruby

   execute "create-yum-cache" do
    command "yum -q makecache"
    action :nothing
   end
   
   ruby_block "reload-internal-yum-cache" do
     block do
       Chef::Provider::Package::Yum::YumCache.instance.reload
     end
     action :nothing
   end
   
   cookbook_file "/etc/yum.repos.d/custom.repo" do
     source "custom"
     mode 00644
     notifies :run, "execute[create-yum-cache]", :immediately
     notifies :create, "ruby_block[reload-internal-yum-cache]", :immediately
   end
