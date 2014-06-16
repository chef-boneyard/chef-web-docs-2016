.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Recipes in cookbooks should follow some simple patterns:

* **Modular**  Recipes should be modular. This allows users who use them to be selective about the policies they choose to enforce. For example, rather than one large recipe that does everything, break recipes down into specific configuration options:
  
  .. code-block:: ruby
  
     -- cookbook_name
        -- recipes
        -- config.rb
        -- cron.rb
        -- default.rb
        -- delete_validation.rb
        -- service.rb
        -- task.rb
  
  This type of approach will make it easier to determine which recipes go into a run-list.
 
* **Minimally prescriptive**  Recipes should be small and focused and should only do what is needed to complete a specific task. For example:
  
  .. code-block:: ruby
   
     service 'cron' do
       service_name 'crond' if platform_family?('rhel', 'fedora')
       service_name 'vixie-cron' if platform_family?('gentoo')
       action [:enable, :start]
       end
  
  This type of approach is simple: it starts and enables the named services while also ensuring that the recipe runs on multiple platforms.

* **Extend cookbooks using custom resources**  Use custom resources to expose implementation-specific configurations. For example, the |cookbook apache2| cookbook contains the ``web_app`` custom resource, which manages a virtual host template for an |apache| web site:
  
  .. code-block:: ruby
  
     web_app "my_site_french" do
       server_name node['hostname']
       server_aliases [node['fqdn'], "fr.my-site.example.com"]
       cookbook "my-site"
       template "my-custom-fr-vhost.conf.erb"
       docroot "/srv/www/my_site_fr"
     end
  
  This type of approach is repeatable because it uses attributes to ensure that the implementation-specific configurations can be modified when needed, yet the resource itself is reusable.
