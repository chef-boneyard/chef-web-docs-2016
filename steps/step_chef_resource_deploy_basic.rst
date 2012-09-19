.. This is an included how-to. 

Basic attribute usage

.. code-block:: ruby

   deploy "/my/deploy/dir" do
     repo "git@github.com/whoami/project"
     revision "abc123" # or "HEAD" or "TAG_for_1.0" or (subversion) "1234"
     user "deploy_ninja"
     enable_submodules true
     migrate true
     migration_command "rake db:migrate"
     environment "RAILS_ENV" => "production", "OTHER_ENV" => "foo"
     shallow_clone true
     action :deploy # or :rollback
     restart_command "touch tmp/restart.txt"
     git_ssh_wrapper "wrap-ssh4git.sh"
     scm_provider Chef::Provider::Git # is the default, for svn: Chef::Provider::Subversion
   end
