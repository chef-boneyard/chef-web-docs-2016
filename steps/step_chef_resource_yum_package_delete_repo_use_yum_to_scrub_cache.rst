.. This is an included how-to. 

To delete a repository while using |yum| to scrub the cache to avoid issues:

.. code-block:: ruby

   execute "clean-yum-cache" do
     command "yum clean all"
     action :nothing
   end
   
   file "/etc/yum.repos.d/bad.repo" do
     action :delete
     notifies :run, "execute[clean-yum-cache]", :immediately
     notifies :create, "ruby_block[reload-internal-yum-cache]", :immediately
   end

.. note:: The previous two examples are thanks to gaffneyc @ https://gist.github.com/918711.
