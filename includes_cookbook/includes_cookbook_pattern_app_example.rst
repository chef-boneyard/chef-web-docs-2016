.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The recipes in an |cookbook type_app| cookbook are typically based off of a default recipe which then includes the other recipes needed to build the working configuration. For example, an |cookbook type_app| cookbook named ``grantmc``, the ``default.rb`` recipe should use the ``include_recipe`` method to include the other recipes in the cookbook:

.. code-block:: ruby

   include_recipe "grantmc::database"
   include_recipe "grantmc::webserver"
   
and then each of the other recipes should contain all of the configuration needed to build the desired working configuration. For ``database.rb`` includes recipes built into the |cookbook apache2| cookbook and also contains a mix of both custom resources (``mysql_connection_info``) and platform resources (``execute``):
   
.. code-block:: ruby

   include_recipe "mysql::server"
   include_recipe "mysql::ruby"

   mysql_connection_info = {
     :host => node['grantmc']['database']['host'],
     :username => node['grantmc']['database']['username'],
     :password => node['grantmc']['database']['password']
   }

   ...

   execute "initialize grantmc database" do
     command "mysql -h #{node['grantmc']['database']['host']} ..."
     not_if  "mysql -h #{node['grantmc']['database']['host']} ..."
   end

and then for ``webserver.rb`` includes recipes built into the |cookbook apache2| cookbook and also contains a mix of both custom resources (``apache_site``) and platform resources (``execute``, ``package``, and ``template``):
   
.. code-block:: ruby
   
   node.default['apache']['default_site_enabled'] = false
   
   include_recipe "apache2"
   include_recipe "apache2::mod_php5"
   
   package "php-mysql" do
     action :install
     notifies :restart, "service[apache2]"
   end
   
   ...
   
   apache_site "grantmc.conf" do
     enable true
     notifies :restart, 'service[apache2]'
   end
   
   ...
   
   template "/srv/apache/grantmc/index.php" do
     source "index.php.erb"
     mode "0644"
   end

The ``default.rb`` recipe is then added to the run-list for the node and the node will be configured to be 