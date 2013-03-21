.. This is an included how-to. 

The following example shows how |bash| can be used to install a plug-in for |rbenv| named "ruby-build", which is located in |git| version source control. First, the application is synchronized, and then |bash| changes its working directory to the location in which "ruby-build" is located, and then runs a command.

.. code-block:: ruby

   git "#{Chef::Config[:file_cache_path]}/ruby-build" do
     repository "git://github.com/sstephenson/ruby-build.git"
     reference "master"
     action :sync
   end
   
   bash "install_ruby_build" do
     cwd "#{Chef::Config[:file_cache_path]}/ruby-build"
     user "rbenv"
     group "rbenv"
     code <<-EOH
       ./install.sh
       EOH
     environment 'PREFIX' => "/usr/local"
  end

.. note:: If you want to know more about ``ruby-build``, see here: https://github.com/sstephenson/ruby-build.
