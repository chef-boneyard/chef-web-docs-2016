.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following example shows a definition as a custom resource:

.. code-block:: ruby

   property :url, String
   
   action :create do
   
     cache_dir = Chef::Config[:file_cache_path]
     package_file = splunk_file(params[:url])
     cached_package = ::File.join(cache_dir, package_file)
   
     remote_file cached_package do
       source url
       action :create_if_missing
     end
   
     if %w{omnios}.include?(node['platform'])
       pkgopts = [
         '-a #{cache_dir}/#{params[:name]}-nocheck',
         '-r #{cache_dir}/splunk-response'
       ]
   
       execute 'uncompress #{cached_package}' do
         not_if { File.exist?("#{cache_dir}/#{package_file.gsub(/\.Z/, '')}") }
       end
   
       cookbook_file '#{cache_dir}/#{params[:name]}-nocheck' do
         source 'splunk-nocheck'
       end
   
       file '#{cache_dir}/splunk-response' do
         content 'BASEDIR=/opt'
       end
     end
   
     package params[:name] do
       source cached_package.gsub(/\.Z/, '')
       case node['platform_family']
       when 'rhel'
         provider Chef::Provider::Package::Rpm
       when 'debian'
         provider Chef::Provider::Package::Dpkg
       when 'omnios'
         provider Chef::Provider::Package::Solaris
         options pkgopts.join(' ')
       end
     end
   end



Once built, the custom resource may be used in a recipe just like the any of the resources that are built into |chef|. The resource gets its name from the cookbook and from the file name in the ``/resources`` directory, with an underscore (``_``) separating them. For example, a cookbook named ``install`` with a custom resource in the ``/resources`` directory named ``splunk.rb``. Use it in a recipe like this:

.. code-block:: ruby

   install_splunk 'name' do
     url 'https://downloads.chef.io/some.pkg'
   end

