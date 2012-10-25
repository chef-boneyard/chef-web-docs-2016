.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A definition file creates a new resource apache_site:

.. code-block:: ruby

   apache_site Definition
   define :apache_site, :enable => true do
     include_recipe "apache2"
    
     if params[:enable]
       execute "a2ensite #{params[:name]}" do
         command "/usr/sbin/a2ensite #{params[:name]}"
         notifies :restart, resources(:service => "apache2")
         not_if do
           ::File.symlink?("#{node[:apache][:dir]}/sites-enabled/#{params[:name]}") or
           ::File.symlink?("#{node[:apache][:dir]}/sites-enabled/000-#{params[:name]}")
         end
         only_if do ::File.exists?("#{node[:apache][:dir]}/sites-available/#{params[:name]}") end
       end
     else
       execute "a2dissite #{params[:name]}" do
         command "/usr/sbin/a2dissite #{params[:name]}"
         notifies :restart, resources(:service => "apache2")
         only_if do ::File.symlink?("#{node[:apache][:dir]}/sites-enabled/#{params[:name]}") end
       end
     end
   end

Once created, the definition can be utilized by placing it in a recipe:

.. code-block:: ruby

   apache_site resource
   # Enable my_site.conf
   apache_site "my_site.conf" do
     enable true
   end
   
   # Disable my_site.conf
   apache_site "my_site.conf" do
     enable false
   end

The attributes of the new ``apache_site`` resource are made accessible via the params hash. Within the context of a |chef| run, the definition will be replaced by all the resources that are specified within the definition. For example, in the ``enabled`` case, the definition will be expanded to:

.. code-block:: ruby

   execute "a2ensite my_site.conf" do
     command "/usr/sbin/a2ensite my_site.conf"
     notifies :restart, resources(:service => "apache2")
     not_if do
       ::File.symlink?("/etc/apache2/sites-enabled/my_site.conf") or
         ::File.symlink?("/etc/apache2/sites-enabled/000-my_site.conf")
     end
   end
