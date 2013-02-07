.. This is an included how-to.

The following is an example of how to install the ``foo123`` module for |nginx|. This module adds shell-style functionality to an |nginx| configuration file and does the following:

* Declares three variables
* Gets the |nginx| file from a remote location
* Installs the file using |bash| to the path specified by the ``src_filepath`` variable

.. code-block:: ruby

   src_filename = "foo123-nginx-module-v#{node['nginx']['foo123']['version']}.tar.gz"
   src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"
   extract_path = "#{Chef::Config['file_cache_path']}/nginx_foo123_module/#{node['nginx']['foo123']['checksum']}"
   
   remote_file src_filepath do
     source node['nginx']['foo123']['url']
     checksum node['nginx']['foo123']['checksum']
     owner 'root'
     group 'root'
     mode 00644
   end
   
   bash 'extract_module' do
     cwd ::File.dirname(src_filepath)
     code <<-EOH
       mkdir -p #{extract_path} 
       tar xzf #{src_filename} -C #{extract_path}
       mv #{extract_path}/*/* #{extract_path}/
       EOH
     not_if { ::File.exists?(extract_path) }
   end

.. note:: This example is similar to the ``upload_progress_module`` recipe in the following cookbook: https://github.com/opscode-cookbooks/nginx.
