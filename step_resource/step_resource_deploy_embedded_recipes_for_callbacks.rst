.. This is an included how-to. 

Using resources from within your callbacks as blocks or within callback files distributed with your application's source code. To use embedded recipes for callbacks:

.. code-block:: ruby

   deploy "#{node['tmpdir']}/deploy" do
     repo "#{node['tmpdir']}/gitrepo/typo/"
     environment 'RAILS_ENV' => 'production'
     revision 'HEAD'
     action :deploy
     migration_command 'rake db:migrate --trace'
     migrate true
      
     # Callback awesomeness:
     before_migrate do
       current_release = release_path
       
       directory "#{current_release}/deploy" do
         mode '0755'
       end
     
       # creates a callback for before_symlink
       template "#{current_release}/deploy/before_symlink_callback.rb" do
         source 'embedded_recipe_before_symlink.rb.erb'
         mode '0644'
       end
      
     end
      
     # This file can contain Chef recipe code, plain ruby also works
     before_symlink 'deploy/before_symlink_callback.rb'
      
     restart do
       current_release = release_path
       file "#{release_path}/tmp/restart.txt" do
         mode '0644'
       end
     end
   
   end
