.. This is an included how-to. 

To customize the application layout:
The layout of the application matches a Rails app by default, but you can customize it to fit your needs

.. code-block:: ruby

   deploy "/my/apps/dir/deploy" do
     # Use a local repo if you prefer
     repo "/path/to/gitrepo/typo/"
     environment "RAILS_ENV" => "production"
     revision "HEAD"
     action :deploy
     migration_command "rake db:migrate --trace"
     migrate true
     restart_command "touch tmp/restart.txt"
     create_dirs_before_symlink  %w{tmp public config deploy}
     
     # You can use this to customize if your app has extra configuration files 
     # such as amqp.yml or app_config.yml
     symlink_before_migrate  "config/database.yml" => "config/database.yml"
      
     # If your app has extra files in the shared folder, specify them here
     symlinks  "system" => "public/system", "pids" => "tmp/pids", "log" => "log",
               "deploy/before_migrate.rb" => "deploy/before_migrate.rb",
               "deploy/before_symlink.rb" => "deploy/before_symlink.rb",
               "deploy/before_restart.rb" => "deploy/before_restart.rb",
               "deploy/after_restart.rb" => "deploy/after_restart.rb"
   end


