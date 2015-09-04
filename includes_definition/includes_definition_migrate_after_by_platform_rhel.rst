.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following example shows the previous definition, but broken down to be a custom resource specific to the |redhat enterprise linux| platform:

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
   
     rpm_package params[:name] do
       source cached_package.gsub(/\.Z/, '')
     end
   
   end

Put this recipe in the ``install`` cookbook's ``/resources`` directory and name ``splunk_rpm.rb``. Use it in a recipe like this:

.. code-block:: ruby

   install_splunk_rpm 'name' do
     url 'https://downloads.chef.io/some.pkg'
   end
