=====================================================
About the |dsl delivery|
=====================================================

.. include:: ../../includes_dsl_delivery/includes_dsl_delivery.rst

.. warning:: This resource is only available from the ``delivery-truck`` cookbook: https://github.com/chef-cookbooks/delivery-truck.

Helpers
-----------------------------------------------------
.. include:: ../../includes_dsl_delivery/includes_dsl_delivery_helpers.rst

Examples
-----------------------------------------------------

.. code-block:: ruby

   changed_cookbooks.each do |cookbook|
     execute "unit_rspec_#{cookbook[:name]}" do
       cwd cookbook[:path]
       command "rspec --format documentation --color"
       only_if { has_spec_tests?(cookbook[:path]) }
     end
   end

.. code-block:: ruby

   changed_cookbooks.each do |cookbook|
     unless bumped_version?(cookbook[:path])
       raise DeliveryTruck::Error, "The #{cookbook[:name]} cookbook was modified " \
                                   "but the version was not updated in the " \
                                   "metadata file."
     end
   
     execute "syntax_check_#{cookbook[:name]}" do
       command "knife cookbook test -o #{cookbook[:path]} -a"
     end
   end

.. code-block:: ruby

   if push_repo_to_github?
     git_ssh = File.join(node['delivery']['workspace']['cache'], 'git_ssh')
     deploy_key = File.join(node['delivery']['workspace']['cache'], 'github.pem')
     secrets = get_project_secrets
   
     file deploy_key do
       content secrets['github']
       owner 'dbuild'
       mode '0600'
       sensitive true
     end
   
     template git_ssh do
       source 'git_ssh.erb'
       owner 'dbuild'
       mode '0755'
     end
   
     execute "set_git_username" do
       command "git config user.name 'Delivery'"
       cwd node['delivery']['workspace']['repo']
       environment({"GIT_SSH" => git_ssh})
     end

     execute "set_git_email" do
       command "git config user.email 'delivery@chef.io'"
       cwd node['delivery']['workspace']['repo']
       environment({"GIT_SSH" => git_ssh})
     end
   
     github_repo = node['delivery']['config']['delivery-truck']['publish']['github']
     execute "add_github_remote" do
       command "git remote add github git@github.com:#{github_repo}.git"
       cwd node['delivery']['workspace']['repo']
       environment({"GIT_SSH" => git_ssh})
       not_if "git remote --verbose | grep ^github"
     end
     
     execute "push_to_github" do
       command "git push github master"
       cwd node['delivery']['workspace']['repo']
       environment({"GIT_SSH" => git_ssh})
     end
   end
