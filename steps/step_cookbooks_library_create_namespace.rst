.. This is an included how-to. 


A database can contain a list of virtual hosts that are used by customers. A custom namespace could be created that looks something like::

   require 'sequel'
   
   class Chef::Recipe::ISP
     # We can call this with ISP.vhosts
     def self.vhosts
       v = []
       @db = Sequel.mysql(
         'web', 
         :user => 'example', 
         :password => 'example_pw', 
         :host => 'dbserver.example.com'
       )
       @db[
         "SELECT virtualhost.domainname, 
              usertable.userid, 
              usertable.uid, 
              usertable.gid, 
              usertable.homedir
          FROM usertable, virtualhost
          WHERE usertable.userid = virtualhost.user_name"
         ].all do |query|
         vhost_data = {
           :servername   => query[:domainname],
           :documentroot => query[:homedir],
           :uid          => query[:uid],
           :gid          => query[:gid],
         }
         v.push(vhost_data)
       end
       Chef::Log.debug("About to provision #{v.length} vhosts")
       v
     end
   end

.. note:: This example was provided by |opscode| community member "Arjuna (fujin)". Thank you!

After the custom namespace is created, it could then be used in a recipe, like this::

   Using ISP.vhosts in a Recipe
   ISP.vhosts.each do |vhost|
     directory vhost[:documentroot] do
       owner vhost[:uid]
       group vhost[:gid]
       mode 0755
       action :create
     end
    
     directory "#{vhost[:documentroot]}/#{vhost[:domainname]}" do
       owner vhost[:uid]
       group vhost[:gid]
       mode 0755
       action :create
     end
   end
