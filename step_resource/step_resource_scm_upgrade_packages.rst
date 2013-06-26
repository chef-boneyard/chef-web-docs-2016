.. This is an included how-to. 

The following example shows the |resource scm| resource using the ``git`` short name as part of a larger recipe that is used to upgrade packages:

.. code-block:: ruby

   #  the following code sample comes from the ``source`` recipe in the ``libvpx-cookbook`` cookbook: https://github.com/enmasse-entertainment/libvpx-cookbook

   git "#{Chef::Config[:file_cache_path]}/libvpx" do
     repository node[:libvpx][:git_repository]
     reference node[:libvpx][:git_revision]
     action :sync
     notifies :run, "bash[compile_libvpx]"
   end

