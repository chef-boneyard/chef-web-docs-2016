=====================================================
About |chef delivery_title|
=====================================================

.. note:: |chef delivery| is currently limited to a group of early access customers. Please `register to receive updates <https://www.chef.io/delivery/>`_ as availability expands.

.. include:: ../../includes_delivery/includes_delivery.rst

.. image:: ../../images/delivery.png

.. include:: ../../includes_delivery/includes_delivery_workflow.rst

Resources
=====================================================
.. include:: ../../includes_resources/includes_resource_delivery_truck_deploy.rst

.. warning:: This resource is only available from the ``delivery-truck`` cookbook: https://github.com/chef-cookbooks/delivery-truck.

Syntax
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_delivery_truck_deploy_syntax.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_delivery_truck_deploy_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_delivery_truck_deploy_attributes.rst

Examples
-----------------------------------------------------

.. code-block:: ruby

   unless search_terms.empty?
     delivery_truck_deploy "deploy_#{node['delivery']['change']['project']}" do
       search search_terms.join(" OR ")
     end
   end


Recipe DSL Helpers
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


delivery (executable)
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery.rst

.. warning:: This resource is only available from: https://github.com/chef/delivery-cli.

delivery api
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_github_user_names.rst

**Link a Github enterprise user name**

.. include:: ../../step_ctl_delivery/step_ctl_delivery_api_github_username_enterprise.rst

**Link a Github.com user name**

.. include:: ../../step_ctl_delivery/step_ctl_delivery_api_github_username_dotcom.rst

delivery checkout
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery clone
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery diff
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery init
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery job
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Verify a job**

.. include:: ../../step_ctl_delivery/step_ctl_delivery_job_verify_unit.rst

delivery pipeline
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery review
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery setup
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

delivery token
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.
