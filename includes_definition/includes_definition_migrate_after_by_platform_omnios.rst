.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following example shows the previous definition, but broken down to be a custom resource specific to the |solaris| platform:

.. code-block:: ruby

   property :url, String
   
   action :create do
   
     cache_dir = Chef::Config[:file_cache_path]
     package_file = splunk_file(params[:url])
     cached_package = ::File.join(cache_dir, package_file)
     pkgopts = [
       '-a #{cache_dir}/#{params[:name]}-nocheck',
       '-r #{cache_dir}/splunk-response'
     ]
   
     remote_file cached_package do
       source url
       action :create_if_missing
     end
   
     execute 'uncompress #{cached_package}' do
       not_if { File.exist?("#{cache_dir}/#{package_file.gsub(/\.Z/, '')}") }
     end
   
     cookbook_file '#{cache_dir}/#{params[:name]}-nocheck' do
       source 'splunk-nocheck'
     end
   
     file '#{cache_dir}/splunk-response' do
       content 'BASEDIR=/opt'
     end
   
     solaris_package params[:name] do
       source cached_package.gsub(/\.Z/, '')
       options pkgopts.join(' ')
     end
   
   end

Put this recipe in the ``install`` cookbook's ``/resources`` directory and name ``splunk_solaris.rb``. Use it in a recipe like this:

.. code-block:: ruby

   install_splunk_solaris 'name' do
     url node['splunk']['forwarder']['url']
   end
