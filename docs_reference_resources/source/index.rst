=====================================================
Resources and Providers Reference
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_resources.txt

.. include:: ../../includes/includes_chef_cookbook_resource.rst

.. include:: ../../includes/includes_chef_cookbook_provider.rst

.. include:: ../../includes/includes_chef_cookbook_provider_platform.rst

This reference describes each of the resources available in the |chef| library, including the list of actions available for the resource, the attributes that can be used, the providers that will do the work (and the provider's shortcut resource name), and examples of using each resource.


Common Functionality for all Resources 
=====================================================
The attributes and actions in this section apply to all resources.

Actions
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_actions.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For example:

.. code-block:: ruby

   service "memcached" do
     action :nothing
     supports :status => true, :start => true, :stop => true, :restart => true
   end

Attributes
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Using ``ignore_failure``:

.. code-block:: ruby

   gem_package "syntax" do
     action :install
     ignore_failure true
   end

Using ``provider``:

.. code-block:: ruby

   package "some_package" do
     provider Chef::Provider::Package::Rubygems
   end

Using ``supports``:

.. code-block:: ruby

   service "apache" do
     supports :restart => true, :reload => true
     action :enable
   end

Using ``provider`` and ``supports``:

.. code-block:: ruby

   service "some_service" do
     provider Chef::Provider::Service::Upstart
     supports :status => true, :restart => true, :reload => true
     action [ :enable, :start ]
   end

Conditional Execution
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_attributes.rst

Arguments
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_common_conditional_arguments.rst

``not_if`` Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following three examples show how to use a string or a |ruby| block to create ``/tmp/somefile``, but not if the ``/etc/passwd`` already exists.

To execute a string:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     not_if "test -f /etc/passwd"
   end
 
To execute a |ruby| block:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     not_if do
       File.exists?("/etc/passwd")
     end
   end
 
To execute a |ruby| block using curly braces:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     not_if {File.exists?("/etc/passwd")}
   end

The next example shows how to create ``/tmp/somefile``, but not if the node has the attribute ``some_value`` using |ruby| and curly braces (that specify the node attribute):

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     not_if { node[:some_value] }
   end

``only_if`` Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following two examples will create ``/tmp/somefile`` only if ``/etc/passwd`` exists using a string or a |ruby| block.

To execute a string:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     only_if "test -f /etc/passwd"
   end

To execute a |ruby| block:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     not_if do ! File.exists?("/etc/passwd") end
   end
 
The following example will create ``tmp/somefile``, but only if the node has the attribute ``some_value`` using |ruby| and curly braces (that specify the node attribute):

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     only_if { node[:some_value] }
   end


Notifications
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications.rst

Notifications Timers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_timers.rst

Notifies Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_notifies.rst

For example, if you need to restart the |apache| service when you modify a template that configures |apache|, use ``:restart``:

.. code-block:: ruby

   template "/etc/www/configures-apache.conf" do
     notifies :restart, "service[apache]"
   end

By default, notifications are ``:delayed``, that is they are queued up as they are triggered, and then executed at the very end of a |chef| run. To run an action immediately, use ``:immediately``:

.. code-block:: ruby

   template "/etc/nagios3/configures-nagios.conf" do
     # other parameters
     notifies :run, "execute[test-nagios-config]", :immediately
   end
 
To verify a configuration and prevent an application from restarting if the configuration is broken, use ``:nothing``:

.. code-block:: ruby

   execute "test-nagios-config" do
     command "nagios3 --verify-config"
     action :nothing
   end

To send notifications to multiple resources, just use multiple attributes. Multiple attributes will get sent to the notified resources in the order specified.

.. code-block:: ruby

   template "/etc/netatalk/netatalk.conf" do
     notifies :restart, "service[afpd]", :immediately
     notifies :restart, "service[cnid]", :immediately
   end
 
   service "afpd"
   service "cnid"

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
To reload a service:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     notifies :reload, "service[apache]"
   end

To enable a service after restarting or reloading it:

.. code-block:: ruby
 
   service "apache" do
     supports :restart => true, :reload => true
     action :enable
   end

To notify multiple resources:

.. code-block:: ruby

   template "/etc/chef/server.rb" do
     source "server.rb.erb"
     owner "root"
     group "root"
     mode "644"
     notifies :restart, "service[chef-solr]", :delayed
     notifies :restart, "service[chef-solr-indexer]", :delayed
     notifies :restart, "service[chef-server]", :delayed
   end

To notify multiple resources and create a sequence of ordered notifications:

.. code-block:: ruby

   execute 'foo' do
     command '...'
     notifies :run, 'template[baz]', :immediately
     notifies :install, 'package[bar]', :immediately
     notifies :run, 'execute[final]', :immediately
   end
   
   template 'baz' do
     ...
     notifies :run, 'execute[restart_baz]', :immediately
   end
   
   package 'bar'
   
   execute 'restart_baz'
   
   execute 'final' do
     command '...'
   end

where the sequencing will be in the following order: ``execute 'foo'``, ``template 'baz'``, ``execute [restart_baz]``, ``package 'bar'``, and ``execute 'final'``.

Subscribes Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes/includes_chef_cookbook_resource_common_notifications_syntax_subscribes.rst

The notification timings for ``subscribes`` work in the same manner as ``notifies``, so the following code should achieve the same results:

.. code-block:: ruby

   template "/etc/nagios3/configures-nagios.conf" do
     # other parameters
   end
 
To verify a configuration and prevent an application from restarting if the configuration is broken, use ``:nothing``:

.. code-block:: ruby

   execute "test-nagios-config" do
     command "nagios3 --verify-config"
     action :nothing
     subscribes :run, resources(:template => "/etc/nagios3/configures-nagios.conf"), :immediately
   end

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
To reload a service based on a template:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
   end

   service "apache" do
     supports :restart => true, :reload => true
     action :enable
     subscribes :reload, resources("template[/tmp/somefile]"), :immediately
   end


Relative Paths
-----------------------------------------------------
.. include:: ../../includes/includes_chef_cookbook_resource_common_relative_paths.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For example:

.. code-block:: ruby

   template "#{ENV['HOME']}/chef-getting-started.txt" do
     source "chef-getting-started.txt.erb"
     mode "0644"
   end



Resources
=====================================================
The following resources are included with |chef| and have native providers:

* cookbook_file
* cron
* deploy
* directory
* env
* erlang_call
* execute
* file
* git
* group
* http_request
* ifconfig
* link
* log
* mdadm
* mount
* ohai
* package
* powershell_script
* remote_directory
* remote_file
* route
* ruby_block
* scm
* script
* service
* subversion
* template
* user
* yum

See below for more information about each of these resources, their related actions and attributes, the providers they rely on, and examples of how these resources can be used in recipes.

cookbook_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_cookbook_file.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cookbook_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_cookbook_file_transfer_a_file.rst


cron
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_cron.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_cron_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_cron_run_program_on_fifth_hour.rst

.. include:: ../../steps/step_chef_resource_cron_run_entry_when_folder_exists.rst


deploy
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_deploy.rst

Deployment Strategies
+++++++++++++++++++++++++++++++++++++++++++++++++++++
In the ``deploy`` directory, a sub-directory named ``shared`` must be created. This sub-directory is where configuration and temporary files will be kept. A typical |ruby on rails| application will have ``config``, ``log``, ``pids``, and ``system`` directories within the ``shared`` directory to keep the files stored there independent of the code in the source repository. 

In addition to the ``shared`` sub-directory, the deploy process will create sub-directories named ``releases`` and ``current`` (also in the ``deploy`` directory). The ``release`` directory holds (up to) five most recently deployed versions of an application. The ``current`` directory holds the currently-released version.

Deployment Phases
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A deployment happens in four phases:

1. Checkout. |chef| uses the |resource scm| resource to get the specified application revision, placing a clone or checkout in the sub-directory of the ``deploy`` directory named ``cached-copy``. A copy of the application is then placed in a sub-directory under ``releases``.
2. Migrate. If a migration is to be run, |chef| symlinks the database configuration file into the checkout (``config/database.yml`` by default) and runs the migration command. For a |ruby on rails| application, the ``migration_command`` is usually set to ``rake db:migrate``.
3. Symlink. Directories for shared and temporary files are removed from the checkout (``log``, ``tmp/pids``, and ``public/system`` by default). After this step, any needed directories (``tmp``, ``public``, and ``config`` by default) are created if they don't already exist. This step is completed by symlinking shared directories into the current ``release``, ``public/system``, ``tmp/pids``, and ``log`` directories, and then symlinking the ``release`` directory to ``current``.
4. Restart. The application is restarted according to the restart command set in the recipe.

Callbacks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In-between each step in a deployment process, callbacks can be run using arbitrary |ruby| code. All callbacks support embedded recipes given in a block, but each callback assumes a shell command (instead of a deploy hook filename) when given a string.

The following callback types are available:

* ``before_migrate``
* ``before_symlink``
* ``before_restart``
* ``after_restart``
* ``restart_command``

Each of these callback types can be used in one of three ways:

* To pass a block
* To specify a file
* To do neither; |chef| will look for a callback file named after one of the callback types (``before_migrate.rb``, for example) and if the file exists, to evaluate it as if it were a specified file.

Within a callback, there are two ways to get access to information about the deployment:

* ``release_path`` can be used to get the path to the current release.
* ``new_resource`` can be used to access the deploy resource, including environment variables that have been set there. (``new_resource`` is a preferred approach over using the ``@configuration`` variable.)

Both of these options must be available at the top-level within the callback, along with any assigned values that will be used later in the callback.

For example, to pass a block:

.. code-block:: ruby

   deploy_revision "/deploy/dir/" do
     # other attributes
     # ...
     
     before_migrate do
       # release_path is the path to the timestamp dir 
       # for the current release
       current_release = release_path
        
       # Create a local variable for the node so we'll have access to
       # the attributes
       deploy_node = node
       
       # A local variable with the deploy resource.
       deploy_resource = new_resource
        
       python do
         cwd current_release
         user "myappuser"
         code<<-PYCODE
           # Woah, callbacks in python!
           # ...
           # current_release, deploy_node, and deploy_resource are all available
           # within the deploy hook now.
         PYCODE
       end
     end
   end

Files are searched relative to the current release. The code in the file is evaluated exactly as if the code had been put in a block. To specify a file:

.. code-block:: ruby

   deploy "/deploy/dir/" do
     # ...
      
     before_migrate "callbacks/do_this_before_migrate.rb"
   end

Custom Application Layouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The |resource deploy| resource expects an application to be structured like a |ruby on rails| application, but the layout can be modified to meet custom requirements as needed.

The following custom application layouts are available:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Layout
     - Description
   * - ``symlink_before_migrate``
     - |layout symlink_before_migrate resource deploy|
   * - ``purge_before_symlink``
     - |layout purge_before_symlink resource deploy|
   * - ``create_dirs_before_symlink``
     - |layout create_dirs_before_symlink resource deploy|
   * - ``symlinks``
     - |layout symlinks resource deploy|

Starting Over
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|chef| uses a cache file to keep track of the order in which each revision of an application is deployed. Ifa re-deployment must be forced---by deleting the deployed code from a node, for example---the cache file must be deleted as well. The cache file is located in the default configuration at |path chef deploy cache file|.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_providers.rst

``timestamped_deploy``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|timestamped_deploy provider deploy|

``deploy_revision`` and ``deploy_branch``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
|deploy_revision provider deploy|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_deploy_add_private_key_from_data_bag.rst

.. include:: ../../steps/step_chef_resource_deploy_add_private_key_from_recipe.rst

.. include:: ../../steps/step_chef_resource_deploy_basic.rst

.. include:: ../../steps/step_chef_resource_deploy_custom_application_layout.rst

.. include:: ../../steps/step_chef_resource_deploy_embedded_recipes_for_callbacks.rst

.. include:: ../../steps/step_chef_resource_deploy_private_git_repo_using_application_cookbook.rst

.. include:: ../../steps/step_chef_resource_deploy_recipe_uses_ssh_wrapper.rst

.. include:: ../../steps/step_chef_resource_deploy_use_same_api_as_gitdeploy_gems.rst

.. include:: ../../steps/step_chef_resource_deploy_without_symlink_to_shared.rst


directory
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_directory.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_directory_create.rst

.. include:: ../../steps/step_chef_resource_directory_create_in_windows.rst

.. include:: ../../steps/step_chef_resource_directory_create_recursively.rst

.. include:: ../../steps/step_chef_resource_directory_delete.rst


env
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_env.rst

.. note:: On |unix|-based systems, the best way to manipulate environment keys is with the ENV variable in |ruby|; however, this approach does not have the same "permanent" effect as using the ``env`` resource.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_environment_set_variable.rst


erlang_call
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_erlang_call.rst

.. note:: The ``erl_call`` command needs to be on the path for this resource to work properly.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_erlang_call_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_erlang_call_run_command_on_node.rst


execute
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_execute.rst

.. note:: Use the |resource script| resource to execute a script using a specific interpreter (|ruby|, |python|, |perl|, |csh|, or |bash|).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_execute_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_execute_command_upon_notification.rst

.. include:: ../../steps/step_chef_resource_execute_command_with_touch_file.rst

.. include:: ../../steps/step_chef_resource_execute_command_with_variable.rst


file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_file.rst

.. note:: Other resources should be used to manage files that are not present on a node. Use |resource cookbook file| when copying a file from a cookbook, |resource template| when using a template, and |resource remote file| when transferring files from remote locations.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_file_create.rst

.. include:: ../../steps/step_chef_resource_file_create_in_windows.rst

.. include:: ../../steps/step_chef_resource_file_remove.rst

.. include:: ../../steps/step_chef_resource_file_set_file_mode.rst


group
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_group.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_group_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_group_append_user.rst


http_request
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_http_request.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_http_request_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_http_request_send_get.rst

.. include:: ../../steps/step_chef_resource_http_request_send_post.rst


ifconfig
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ifconfig.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ifconfig_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_ifconfig_configure_network_interface.rst


link
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_link.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_link_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_link_create_symbolic.rst

.. include:: ../../steps/step_chef_resource_link_create_hard.rst

.. include:: ../../steps/step_chef_resource_link_delete.rst


log
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_log.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_log_set_info.rst

.. include:: ../../steps/step_chef_resource_log_set_debug.rst


mdadm
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mdadm.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mdadm_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_mdadm_assemble_raid_array.rst


mount
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mount.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_mount_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_mount_labeled_file_system.rst

.. include:: ../../steps/step_chef_resource_mount_local_block_device.rst

.. include:: ../../steps/step_chef_resource_mount_nonblock_file_system.rst

.. include:: ../../steps/step_chef_resource_mount_remote_file_system_add_to_fstab.rst

.. include:: ../../steps/step_chef_resource_mount_remote_file_system.rst

.. include:: ../../steps/step_chef_resource_mount_remote_windows_folder.rst

.. include:: ../../steps/step_chef_resource_mount_unmount_remote_windows_drive.rst


ohai
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ohai.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ohai_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_ohai_reload.rst

.. include:: ../../steps/step_chef_resource_ohai_reload_after_create_user.rst


package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_package.rst

Gem Package Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The |rubygems| package provider attempts to use the |rubygems| API to install |gems| without spawning a new process, whenever possible. A |gems| command to install will be spawned under the following conditions:

* When a ``gem_binary`` attribute is specified (as a hash, a string, or by a .gemrc file), the provider will run that command to examine its environment settings and then again to install the |gem|.
* When install options are specified as a string, the provider will span a |gems| command with those options when installing the |gem|.
* The |omnibus installer| will search the PATH for a |gem| command rather than defaulting to the current |gem| environment. As part of ``enforce_path_sanity``, the ``bin`` directories area dded to the PATH, which means when there are no other proceeding |rubygems|, the installation will still be operated against it.

Specify Options with a Hash
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
If an explicit ``gem_binary`` parameter is not being used with the ``gem_package`` resource, it is preferable to provide the install options as a hash. This approach allows the provider to install the |gem| without needing to spawn an external |gem| process. 

The following |rubygems| options are available for inclusion within a hash and are passed to the |rubygems| DependencyInstaller:

* ``:env_shebang``
* ``:force``
* ``:format_executable``
* ``:ignore_dependencies``
* ``:prerelease``
* ``:security_policy``
* ``:wrappers``

For more information about these options, see the |rubygems| documentation: http://rubygems.rubyforge.org/rubygems-update/Gem/DependencyInstaller.html. 

To install a gem with a hash of options

.. code-block:: ruby

   gem_package("bundler") do
     options(:prerelease => true, :format_executable => false)
   end

Specify Options with a String
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
When using an explicit ``gem_binary``, options must be passed as a string. When not using an explicit ``gem_binary``, |chef| is forced to spawn a |gems| process to install the |gems| (which uses more system resources) when options are passed as a string. String options are passed verbatim to the |gems| command and should be specified just as if they were passed on a command line. For example, ``--prerelease`` for a pre-release gem.

To install a gem with an options string:

.. code-block:: ruby

   gem_package("nokogiri") do
     gem_binary("/opt/ree/bin/gem")
     options("--prerelease --no-format-executable")
   end

Specify Options with a .gemrc File
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Options can be specified in a .gemrc file. By default the ``gem_package`` resource will use the |ruby| interface to install |gems| which will ignore the .gemrc file. The ``gem_package`` resource can be forced to use the |gems| command instead (and to read the .gemrc file) by adding the ``gem_binary`` attribute to a code block:

To require a .gemrc file to be used during install:

.. code-block:: ruby

   gem_package("nokogiri") do
     gem_binary "gem"
   end

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_package_install_gems_for_chef_recipe.rst

.. include:: ../../steps/step_chef_resource_package_install_gems_from_local.rst

.. include:: ../../steps/step_chef_resource_package_install_version.rst

.. include:: ../../steps/step_chef_resource_package_install_with_options.rst

.. include:: ../../steps/step_chef_resource_package_install_with_response_file.rst

.. include:: ../../steps/step_chef_resource_package_install_with_specific_provider.rst

.. include:: ../../steps/step_chef_resource_package_install_with_yum.rst

.. include:: ../../steps/step_chef_resource_package_install.rst

.. include:: ../../steps/step_chef_resource_package_purge.rst

.. include:: ../../steps/step_chef_resource_package_remove.rst

.. include:: ../../steps/step_chef_resource_package_upgrade.rst


powershell_script
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_powershell_script.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_powershell_write_to_interpolated_path.rst

.. include:: ../../steps/step_chef_resource_powershell_cwd_microsoft_env.rst

.. include:: ../../steps/step_chef_resource_powershell_cwd.rst

.. include:: ../../steps/step_chef_resource_powershell_pass_env_to_script.rst


remote_directory
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_directory.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_directory_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_remote_directory_recursive_transfer.rst


remote_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_remote_file.rst

.. note:: Fetching files from the ``files/`` directory in a cookbook should be done with the |resource cookbook file| resource.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_remote_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_remote_file_transfer_from_url.rst

.. include:: ../../steps/step_chef_resource_remote_file_transfer_remote_source_changes.rst


route
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_route.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_route_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_route_add_host.rst

.. include:: ../../steps/step_chef_resource_route_delete_network.rst


ruby_block
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ruby_block.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_ruby_block_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_ruby_block_reread_chef_client.rst


scm
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_scm.rst

.. note:: This resource is often used in conjunction with the |resource deploy| resource.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_scm_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_scm_get_latest_version.rst

.. include:: ../../steps/step_chef_resource_scm_use_git_mirror.rst

.. include:: ../../steps/step_chef_resource_scm_use_different_branches.rst


script
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_script.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_script_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_script_bash_provider_and_interpreter.rst

.. include:: ../../steps/step_chef_resource_script_bash_script.rst


service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_service.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_service_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_service_start_service_and_enable_at_boot.rst

.. include:: ../../steps/step_chef_resource_service_start_service.rst

.. include:: ../../steps/step_chef_resource_service_process_table_has_different_value.rst

.. include:: ../../steps/step_chef_resource_service_manage_ssh_based_on_node_platform.rst

.. include:: ../../steps/step_chef_resource_service_change_service_provider_based_on_node.rst


template
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_template.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_template_configure_file.rst

.. include:: ../../steps/step_chef_resource_template_configure_file_from_local.rst

.. include:: ../../steps/step_chef_resource_template_configure_file_with_variable_map.rst


user
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_user.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_attributes.rst

Supported Features
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_supported_features.rst

Password Shadow Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_password_shadow_hash.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_user_create_random.rst

.. include:: ../../steps/step_chef_resource_user_create_system.rst


yum
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_yum.rst

.. note:: Support for using file names to install packages (as in ``yum_package "/bin/sh"``) is not available because the volume of data required to parse for this is excessive.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_yum_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_yum_package_delete_repo_use_yum_to_scrub_cache.rst

.. include:: ../../steps/step_chef_resource_yum_package_handle_cookbook_file_and_yum_package.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_exact_version.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_minimum_version.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_package_using_default_action.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_package.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_partial_minimum_version.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_specific_architecture.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_specific_version_release.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_specific_version.rst

.. include:: ../../steps/step_chef_resource_yum_package_install_yum_repo_from_file.rst






Lightweight Resources and Providers
=====================================================

Custom resources and providers can also be created using the |lwrp| DSL. |opscode| provides several cookbooks that define some commonly used |lwrp|. To use the lightweight resources provided by |opscode| the cookbook that defines it must also be used. These lightweight resources can be used within recipes to increase automation opportunities.

.. include:: ../../includes/includes_chef_cookbook_lightweight_resource.rst

.. include:: ../../includes/includes_chef_cookbook_lightweight_provider.rst

.. include:: ../../includes/includes_chef_cookbook_lightweight_file_locations.rst

The following groups of lightweight resources are available in open source cookbooks that are provided by |opscode|:

* application
* apt
* aws
* bluepill
* chef_handler
* daemontools
* djbdns
* dmg
* dynect
* firewall
* freebsd
* gunicorn
* homebrew
* iis
* maven
* mysql
* nagios
* pacman
* php
* powershell
* python
* rabbitmq
* riak
* samba
* sudo
* supervisor
* transmission
* users
* webpi
* windows
* yum
* zenoss

Some of the cookbooks contain more than one lightweight resource. Each lightweight resource is described individually in the following sections.



apt_preference
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_apt_preference.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_apt_preference_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_apt_preference_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To pin ``libmysqlclient16`` to version ``5.1.49-3``:

.. code-block:: ruby

   apt_preference "libmysqlclient16" do
     pin "version 5.1.49-3"
     pin_priority "700"
   end

To unpin ``libmysqlclient16``:

.. code-block:: ruby

   apt_preference "libmysqlclient16" do
     action :remove
   end


apt_repository
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_apt_repository.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_apt_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_apt_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_apt_repository_add_cloudkick.rst

.. include:: ../../steps/step_chef_lwrp_apt_repository_add_opscode_list_alternate.rst

.. include:: ../../steps/step_chef_lwrp_apt_repository_add_opscode_list.rst

.. include:: ../../steps/step_chef_lwrp_apt_repository_add_ppa_list.rst

.. include:: ../../steps/step_chef_lwrp_apt_repository_add_zenoss.rst

.. include:: ../../steps/step_chef_lwrp_apt_repository_remove_zenoss.rst




application
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_base.rst

.. note:: This lightweight resource is part of the ``application`` cookbook (http://community.opscode.com/cookbooks/application).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_base_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_base_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
See the application-specific lightweight resources.


application_java_webapp
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_webapp.rst

.. note:: This lightweight resource is part of the ``application_java`` cookbook (http://community.opscode.com/cookbooks/application_java).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_webapp_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_webapp_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_java_tomcat
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_tomcat.rst

.. note:: This lightweight resource is part of the ``application_java`` cookbook (http://community.opscode.com/cookbooks/application_java).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_tomcat_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_java_tomcat_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     java_webapp do
       database_master_role "database_master"
       database do
         driver 'org.gjt.mm.mysql.Driver'
         database 'name'
         port 5678
         username 'user'
         password 'password'
         max_active 1
         max_idle 2
         max_wait 3
       end
     end
   
     tomcat
   end

To create an application using a template:

.. code-block:: ruby

   application "jenkins" do
     path "/usr/local/jenkins"
     owner node["tomcat"]["user"]
     group node["tomcat"]["group"]
     repository "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
     revision "6facd94e958ecf68ffd28be371b5efcb5584c885b5f32a906e477f5f62bdb518-1"
   
     java_webapp do
       context_template "jenkins-context.xml.erb"
     end
   
     tomcat
   end

To invoke a method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     java_webapp do
       database_master_role "database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <Context docBase="<%= @war %>" path="/">
     <!-- <%= @database['quorum'] %> -->
     <!-- <%= @database['replicas'].join(',') %> -->
   </Context>


application_nginx_load_balancer
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_nginx_load_balancer.rst

.. note:: This lightweight resource is part of the ``application_nginx`` cookbook (http://community.opscode.com/cookbooks/application_nginx).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_nginx_load_balancer_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_nginx_load_balancer_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     rails do
     end
   
     nginx_load_balancer do
       only_if { node['roles'].include?('my-app_load_balancer') }
     end
   end

Assuming you have a my-app_application_server role applied to nodes backend-0..backend-3, and a my-app_load_balancer role assigned to frontend-0..frontend-1, then nginx will be installed on the frontends, and configured like this:

.. code-block:: ruby

   upstream my-app {
     server <IP of backend-0>:8000;
     server <IP of backend-1>:8000;
     server <IP of backend-2>:8000;
     server <IP of backend-3>:8000;
   }
   
   server {
     listen 80;
     server_name frontend-0;
     location / {
       proxy_pass http://my-app;
     }
   }

To configure |nginx| to serve static files by setting the ``static_files`` attribute:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     nginx_load_balancer do
       only_if { node['roles'].include?('my-app_load_balancer') }
       static_files "/img" => "images"
     end
   end

which will be expanded to:

.. code-block:: ruby

   server {
     listen 80;
     server_name frontend-0;
   
     location /img {
       alias /usr/local/my-app/current/images;
     }
   
     location / {
       proxy_pass http://my-app;
     }
   }


application_php_mod_php_apache2
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_mod_php_apache2.rst

.. note:: This lightweight resource is part of the ``application_php`` cookbook (http://community.opscode.com/cookbooks/application_php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_mod_php_apache2_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_mod_php_apache2_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "phpvirtualbox" do
     path "/usr/local/www/sites/phpvirtualbox"
     owner node[:apache][:user]
     group node[:apache][:user]
     repository "..."
     deploy_key "..."
     revision "4_0_7"
     packages ["php-soap"]
   
     php do
       database_master_role "database_master"
       local_settings_file "config.php"
     end
   
     mod_php_apache2
   end

This will result in a ``config.php`` file getting created from a ``config.php.erb`` template that is present in the application cookbook. 

To invoke a method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/usr/local/my-app"
     repository "..."
     revision "..."
   
     php do
       database_master_role "database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum']
   <%= @database['replicas'].join(',') %>



application_php_php
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_php.rst

.. note:: This lightweight resource is part of the ``application_php`` cookbook (http://community.opscode.com/cookbooks/application_php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_php_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_php_php_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_python_celery
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_celery.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_celery_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_celery_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.



application_python_django
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_django.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_django_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_django_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

application_python_gunicorn
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_gunicorn.rst

.. note:: This lightweight resource is part of the ``application_python`` cookbook (http://community.opscode.com/cookbooks/application_python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_gunicorn_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_python_gunicorn_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create a sample application that needs a database connection:

.. code-block:: ruby

   application "packaginator" do
     path "/srv/packaginator"
     owner "nobody"
     group "nogroup"
     repository "https://github.com/coderanger/packaginator.git"
     revision "master"
     migrate true
     packages ["libpq-dev", "git-core", "mercurial"]
   
     django do 
       packages ["redis"]
       requirements "requirements/mkii.txt"
       settings_template "settings.py.erb"
       debug true
       collectstatic "build_static --noinput"
       database do
         database "packaginator"
         engine "postgresql_psycopg2"
         username "packaginator"
         password "awesome_password"
       end
       database_master_role "packaginator_database_master"
     end
   end

You can invoke any method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "/srv/packaginator"
     repository "..."
     revision "..."
   
     django do
       database_master_role "packaginator_database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum']
   <%= @database['replicas'].join(',') %>

application_ruby_memcached
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_memcached.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_memcached_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_memcached_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that connects to |memcached|:

.. code-block:: ruby

   application "my-app" do
     path "..."
     repository "..."
     revision "..."
   
     memcached do
       role "memcached_master"
       options do
         ttl 1800
         memory 256
       end
     end
   end

This will generate a config/memcached.yml file:

.. code-block:: ruby

   production:
     ttl: 1800
     memory: 256
     servers:
       - 192.168.0.10:11211


application_ruby_passenger_apache2
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_passenger_apache2.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_passenger_apache2_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_passenger_apache2_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application that needs a database connection:

.. code-block:: ruby

   application "redmine" do
     path "/usr/local/www/redmine"
   
     rails do 
       database do
         database "redmine"
         username "redmine"
         password "awesome_password"
       end
       database_master_role "redmine_database_master"
     end
   
     passenger_apache2 do
     end
   end

You can invoke any method on the database block:

.. code-block:: ruby

   application "my-app" do
     path "..."
     repository "..."
     revision "..."
   
     rails do
       database_master_role "my-app_database_master"
       database do
         database 'name'
         quorum 2
         replicas %w[Huey Dewey Louie]
       end
     end
   end

The corresponding entries will be passed to the context template:

.. code-block:: ruby

   <%= @database['quorum'] %>
   <%= @database['replicas'].join(',') %>

application_ruby_rails
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_rails.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_rails_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_rails_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


application_ruby_unicorn
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_unicorn.rst

.. note:: This lightweight resource is part of the ``aplication_ruby`` cookbook (http://community.opscode.com/cookbooks/aplication_ruby).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_unicorn_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_application_ruby_unicorn_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


aws_ebs_volume
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_prune_snapshots.rst

aws_elastic_ip
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_associate.rst

.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_disassociate.rst







aws_elastic_lb
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add a load balancer to an availability zone:

.. code-block:: ruby

   aws_elastic_lb "elb_qa" do 
     aws_access_key aws['aws_access_key_id'] 
     aws_secret_access_key aws['aws_secret_access_key'] 
     name "QA" action :register
   end


aws_resource_tag
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_credentials.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To assign tags to a node to reflect it's role and environment:

.. code-block:: ruby

   aws_resource_tag node['ec2']['instance_id'] do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     tags({"Name" => "www.example.com app server",
           "Environment" => node.chef_environment})
     action :update
   end

To assign a set of tags to multiple resources, for example more than one |amazon ebs| volume in a disk set:

.. code-block:: ruby

   aws_resource_tag 'my awesome raid set' do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     resource_id [ "vol-d0518cb2", "vol-fad31a9a", "vol-fb106a9f", "vol-74ed3b14" ]
       tags({"Name" => "My awesome RAID disk set",
             "Environment" => node.chef_environment})
   end



bluepill_service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_bluepill_service.rst

.. note:: This lightweight resource is part of the ``bluepill`` cookbook (http://community.opscode.com/cookbooks/bluepill).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_bluepill_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_bluepill_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_bluepill_service_use_blupill_service.rst

.. include:: ../../steps/step_chef_lwrp_bluepill_service_use_resource.rst

.. include:: ../../steps/step_chef_lwrp_bluepill_service_use_resource_template.rst

chef_handler
-----------------------------------------------------
.. include:: ../../includes/includes_chef_handler.rst

.. include:: ../../includes_resources/includes_resource_lwrp_chef_handler.rst

.. note:: This lightweight resource is part of the ``chef_handler`` cookbook (http://community.opscode.com/cookbooks/chef_handler).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_chef_handler_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_chef_handler_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_chef_handler_enable_cloudkickhandler.rst

.. include:: ../../steps/step_chef_lwrp_chef_handler_enable_during_compile.rst

.. include:: ../../steps/step_chef_lwrp_chef_handler_exceptions_only.rst

.. include:: ../../steps/step_chef_lwrp_chef_handler_register.rst

daemontools_service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_daemontools_service.rst

.. note:: This lightweight resource is part of the ``daemontools`` cookbook (http://community.opscode.com/cookbooks/daemontools).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_daemontools_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_daemontools_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_daemontools_service_setup_directory.rst

djbdns_rr
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_djbdns_rr.rst

.. note:: This lightweight resource is part of the ``djbdns`` cookbook (http://community.opscode.com/cookbooks/djbdns).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_djbdns_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_djbdns_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_djbdns_rr_configure_for_tinydns.rst

dmg_package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_dmg_package.rst

.. note:: This lightweight resource does not do full package management for |mac os x| applications, as they have different installed artifacts.

.. note:: This lightweight resource is part of the ``dmg`` cookbook (http://community.opscode.com/cookbooks/dmg).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_dmg_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_dmg_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_dmg_package_install_google_chrome.rst

.. include:: ../../steps/step_chef_lwrp_dmg_package_already_downloaded_app.rst

.. include:: ../../steps/step_chef_lwrp_dmg_package_install_dropbox.rst

.. include:: ../../steps/step_chef_lwrp_dmg_package_macirssi.rst

.. include:: ../../steps/step_chef_lwrp_dmg_package_install_tunnelblick.rst

dynect_rr
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_dynect_rr.rst

.. note:: This lightweight resource is part of the ``dynect`` cookbook (http://community.opscode.com/cookbooks/dynect). The ``dynect_rest`` |ruby| |gem| is required.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_dynect_rr_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_dynect_rr_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_dynect_rr_create_record.rst

firewall
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_default.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_firewall_enable.rst

firewall_rule
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_rule.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_rule_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_rule_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_ssh.rst

.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_tcp.rst


freebsd_port_options
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_freebsd_port_options.rst

.. note:: This lightweight resource is part of the ``freebsd`` cookbook (http://community.opscode.com/cookbooks/freebsd).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_freebsd_port_options_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_freebsd_port_options_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To write ``freebsd-php5-options`` out as ``/var/db/ports/php5/options``:

.. code-block:: ruby

   freebsd_port_options "php5" do
     source "freebsd-php5-options.erb"
     action :create
   end

To read default options from ``/usr/ports/lang/php5``, current options from ``/var/db/ports/php5/options`` (if that option exists), and then set ``APACHE`` options to true (leaving others unchanged):

.. code-block:: ruby

   freebsd_port_options "php5" do
     options "APACHE" => true
     action :create
   end

gunicorn_config
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_config.rst

.. note:: This lightweight resource is part of the ``gunicorn`` cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create a configuration file with default values:

.. code-block:: ruby

   gunicorn_config "/etc/gunicorn/myapp.py" do
     action :create
   end

To tweak some worker-related values:

.. code-block:: ruby

   gunicorn_config "/etc/gunicorn/myapp.py" do
     worker_processes 8
     backlog 4096
     action :create
   end

To use the ``pre_fork`` server hook to sleep for one second before forking:

.. code-block:: ruby

   gunicorn_config "/etc/gunicorn/myapp.py" do
     server_hooks({:pre_fork => 'import time;time.sleep(1)'})
     action :create
   end


gunicorn_install
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_install.rst

.. note:: This lightweight resource is part of the ``gunicorn`` cookbook (http://community.opscode.com/cookbooks/gunicorn).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_install_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_gunicorn_install_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To install |gunicorn| to a specified virtual environment:

.. code-block:: ruby

   gunicorn_install "name_of_virtual_environment" do
     action :install
   end


homebrew
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_homebrew_tap.rst

.. note:: This lightweight resource is part of the ``homebrew`` cookbook (http://community.opscode.com/cookbooks/homebrew).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_homebrew_tap_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_homebrew_tap_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_homebrew_tap_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If |homebrew| is installed on a machine running |mac os x|, the following example will use |homebrew| to install |mysql|:

.. code-block:: ruby

   package "mysql" do
     action :install
   end

To use the |homebrew| provider:

.. code-block:: ruby

   package "mysql" do
     provider Chef::Provider::Package::Homebrew
   end

To tap a repository:

.. code-block:: ruby

   homebrew_tap "homebrew/dupes"

To untap a repository:

.. code-block:: ruby

   homebrew_tap "homebrew/dupes" do
     action :untap
   end


iis_app
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_iis_app.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_app_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_app_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create a new application:

.. code-block:: ruby

   iis_app "myApp" do
     path "/v1_1"
     application_pool "myAppPool_v1_1"
     physical_path "#{node['iis']['docroot']}/testfu/v1_1"
     action :add
   end


iis_config
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_iis_config.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_config_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_config_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To set up logging:

.. code-block:: ruby

   iis_config "/section:system.applicationHost/sites/siteDefaults.logfile.directory:"D:\\logs"" do
     action :config
   end

To load an array of commands from a node:

.. code-block:: ruby

   cfg_cmds = node['iis']['cfg_cmd']
   cfg_cmds.each do |cmd|
     iis_config "#{cmd}" do
        action :config
     end
   end


iis_pool
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_iis_pool.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_pool_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_pool_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create an application pool:

.. code-block:: ruby

   iis_pool 'myAppPool_v1_1' do
     runtime_version "2.0"
     pipeline_mode "Classic"
     action :add
   end

iis_site
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_iis_site.rst

.. note:: This lightweight resource is part of the ``iis`` cookbook (http://community.opscode.com/cookbooks/iis).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_site_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_iis_site_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To stop, then delete a default site:

.. code-block:: ruby

   iis_site 'Default Web Site' do
     action [:stop, :delete]
   end

To create and start a site that maps to the physical location ``C:\inetpub\wwwroot\testfu``:

.. code-block:: ruby

   iis_site 'Testfu Site' do
     protocol :http
     port 80
     path "#{node['iis']['docroot']}/testfu"
     action [:add,:start]
   end

To create and start a site that maps to the ``testfu.opscode.com`` domain:

.. code-block:: ruby

   iis_site 'Testfu Site' do
     protocol :http
     port 80
     path "#{node['iis']['docroot']}/testfu"
     host_header "testfu.opscode.com"
     action [:add,:start]
   end


maven
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_maven.rst

.. note:: This lightweight resource is part of the ``maven`` cookbook (http://community.opscode.com/cookbooks/maven).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_maven_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_maven_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To install |apache maven|:

.. code-block:: ruby

   maven "mysql-connector-java" do
     group_id "mysql"
     version "5.1.19"
     dest "/usr/local/tomcat/lib/"
   end



mysql_database
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_mysql_database.rst

.. note:: This lightweight resource is part of the ``mysql`` cookbook (http://community.opscode.com/cookbooks/mysql).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_mysql_database_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_mysql_database_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_mysql_database_create_database.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_flush_tables.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_query_database.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_unlock_tables.rst



nagios_nrpecheck
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_nagios_nrpecheck.rst

.. note:: This lightweight resource is part of the ``nagios`` cookbook (http://community.opscode.com/cookbooks/nagios).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_nagios_nrpecheck_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_nagios_nrpecheck_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To define the ``check_load`` definition:

.. code-block:: ruby

   nagios_nrpecheck "check_load" do
     command "#{node['nagios']['plugin_dir']}/check_load"
     warning_condition node['nagios']['checks']['load']['warning']
     critical_condition node['nagios']['checks']['load']['critical']
     action :add
   end

To remove the ``check_load`` definition:

.. code-block:: ruby

   nagios_nrpecheck "check_load" do
     action :remove
   end


pacman_aur
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_aur.rst

.. note:: This lightweight resource is part of the ``pacman`` cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_aur_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_aur_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_pacman_aur_use_simple_package.rst

.. include:: ../../steps/step_chef_lwrp_pacman_aur_use_custom_package.rst

pacman_group
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_group.rst

.. note:: This lightweight resource is part of the ``pacman`` cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_pacman_group_base_devel.rst

php_pear
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_default.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_default_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_default_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_php_pear_install_apc_pecl.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_horde_beta.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_mongodb_pecl.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_specific_version.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_yaml.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_upgrade.rst

php_pear_channel
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_channel.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_channel_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_channel_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_php_pear_channel_discover_horde.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_channel_download_then_add.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_channel_update_main_channels.rst



powershell
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_powershell.rst

.. note:: This lightweight resource is part of the ``powershell`` cookbook (http://community.opscode.com/cookbooks/powershell).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_powershell_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_powershell_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To change the hostname for a computer:

.. code-block:: ruby

   powershell "rename hostname" do
     code <<-EOH
     $computer_name = Get-Content env:computername
     $new_name = 'test-hostname'
     $sysInfo = Get-WmiObject -Class Win32_ComputerSystem
     $sysInfo.Rename($new_name)
     EOH
   end

To write to an interpolated path:

.. code-block:: ruby

   powershell "write-to-interpolated-path" do
     code <<-EOH
     $stream = [System.IO.StreamWriter]"#{Chef::Config[:file_cache_path]}/powershell-test.txt"
     $stream.WriteLine("In #{Chef::Config[:file_cache_path]}...word.")
     $stream.close()
     EOH
   end

To use the ``cwd`` attribute:

.. code-block:: ruby

   powershell "cwd-then-write" do
     cwd Chef::Config[:file_cache_path]
     code <<-EOH
     $stream = [System.IO.StreamWriter] "C:/powershell-test2.txt"
     $pwd = pwd
     $stream.WriteLine("This is the contents of: $pwd")
     $dirs = dir
     foreach ($dir in $dirs) {
       $stream.WriteLine($dir.fullname)
     }
     $stream.close()
     EOH
   end

To set the ``cwd`` attribute to a |windows| environment variable:

.. code-block:: ruby

   powershell "cwd-to-win-env-var" do
     cwd ENV['TEMP']
     code <<-EOH
     $stream = [System.IO.StreamWriter] "./temp-write-from-chef.txt"
     $stream.WriteLine("chef on windows rox yo!")
     $stream.close()
     EOH
   end

To pass an environment variable to a script:

.. code-block:: ruby

   powershell "read-env-var" do
     cwd Chef::Config[:file_cache_path]
     environment ({'foo' => 'BAZ'})
     code <<-EOH
     $stream = [System.IO.StreamWriter] "./test-read-env-var.txt"
     $stream.WriteLine("FOO is $env:foo")
     $stream.close()
     EOH
   end


python_pip
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_python_pip.rst

.. note:: This lightweight resource is part of the ``python`` cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_python_pip_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_python_pip_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_python_pip_install_gunicorn.rst

.. include:: ../../steps/step_chef_lwrp_python_pip_install_specific_pip.rst

.. include:: ../../steps/step_chef_lwrp_python_pip_target_virtualenv.rst

.. include:: ../../steps/step_chef_lwrp_python_pip_use_with_core_package_resource.rst

python_virtualenv
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_python_virtualenv.rst

.. note:: This lightweight resource is part of the ``python`` cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_python_virtualenv_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_python_virtualenv_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

.. include:: ../../steps/step_chef_lwrp_python_virtualenv_create_python.rst

.. include:: ../../steps/step_chef_lwrp_python_virtualenv_create_ubuntu.rst


rabbitmq_plugin
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_plugin.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_plugin_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_plugin_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To enable a plugin:

.. code-block:: ruby

   ruby rabbitmq_plugin "rabbitmq_stomp" do 
     action :enable 
   end

To disable a plugin:

.. code-block:: ruby

   rabbitmq_plugin "rabbitmq_shovel" do 
     action :disable 
   end

rabbitmq_user
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_user.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To delete a user:

.. code-block:: ruby

   ruby rabbitmq_user "guest" do 
     action :delete 
   end

To add a user:

.. code-block:: ruby

   rabbitmq_user "nova" do 
     password "sekret" 
     action :add 
   end

To set the permissions for a user:

.. code-block:: ruby

   rabbitmq_user "nova" do 
     vhost "/nova" 
     permissions "\".\" \".\" \".*\"" 
     action :set_permissions 
   end


rabbitmq_vhost
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_vhost.rst

.. note:: This lightweight resource is part of the ``rabbitmq`` cookbook (http://community.opscode.com/cookbooks/rabbitmq).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_vhost_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_rabbitmq_vhost_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add a virtual host:

.. code-block:: ruby

   ruby rabbitmq_vhost "/nova" do 
     action :add
   end


riak_cluster
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_riak_cluster.rst

.. note:: This lightweight resource is part of the ``riak`` cookbook (http://community.opscode.com/cookbooks/riak).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_riak_cluster_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_riak_cluster_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_riak_cluster_add_to_cluster.rst

samba_user
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_samba_user.rst

.. note:: This lightweight resource is part of the ``samba`` cookbook (http://community.opscode.com/cookbooks/samba).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_samba_user_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_samba_user_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_samba_user_create.rst



supervisor_fcgi
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_fcgi.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_fcgi_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_fcgi_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


supervisor_group
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_group.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_group_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


supervisor_service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_service.rst

.. note:: This lightweight resource is part of the ``supervisor`` cookbook (http://community.opscode.com/cookbooks/supervisor).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_service_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_supervisor_service_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To enable a service named ``celery``:

.. code-block:: ruby

   ruby supervisor_service "celery" do 
     action :enable 
     autostart false 
     user "nobody" 
   end



sudo
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_sudo.rst

.. note:: This lightweight resource is part of the ``sudo`` cookbook (http://community.opscode.com/cookbooks/sudo).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_sudo_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_sudo_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To use the natural (default) mode:

.. code-block:: ruby

   sudo "tomcat" do
     user "%tomcat" # or a username
     runas "app_user" # or "app_user : tomcat"
     commands ["/etc/init.d/tomcat restart"] # array of commands, will be .join(",")
     host "ALL"
     nopasswd false # true prepends the runas_spec with NOPASSWD
   end

To use the template mode:

.. code-block:: ruby

   sudo "tomcat"
     # this template must exist in the calling cookbook
     template "restart_tomcat.erb"
     variables( :cmds => [ "/etc/init.d/tomcat restart" ] )
   end

With both examples, the following is be generated in ``/etc/sudoers.d/tomcat``:

.. code-block:: ruby

   # this file was generated by chef
   %tomcat ALL=(app_user) /etc/init.d/tomcat restart


transmission_torrent_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_transmission_torrent_file.rst

.. note:: This lightweight resource is part of the ``transmission`` cookbook (http://community.opscode.com/cookbooks/transmission).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_transmission_torrent_file_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_transmission_torrent_file_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_transmission_torrent_file_download_iso.rst

.. include:: ../../steps/step_chef_lwrp_transmission_torrent_file_download_iso_continue_seeding.rst


users_manage
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_users_manage.rst

.. note:: This lightweight resource is part of the ``users`` cookbook (http://community.opscode.com/cookbooks/users).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_users_manage_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_users_manage_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To create users based on data bag objects that have a ``group_id`` attribute value of ``2300``:

.. code-block:: ruby

   users_manage "sysadmin" do 
     group_id 2300 
     action :create
   end


To remove users based on data bag objects that have a ``group_id`` attribute value of ``2300``:

.. code-block:: ruby

   users_manage "sysadmin" do 
     group_id 2300 
     action :remove
   end


webpi_product
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_webpi_product.rst

.. note:: This lightweight resource is part of the ``webpi`` cookbook (http://community.opscode.com/cookbooks/webpi).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_webpi_product_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_webpi_product_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To install the recommended configuration for |microsoft iis| 7:

.. code-block:: ruby

   webpi_product "IIS7" do
     accept_eula true
     action :install
   end

To install |windows powershell|  2.0:

.. code-block:: ruby

   webpi_product "PowerShell2" do
     accept_eula true
     action :install
   end



windows_auto_run
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_auto_run.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_auto_run_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_auto_run_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To run ``BGInfo`` at login:

.. code-block:: ruby

   windows_auto_run 'BGINFO' do
     program "C:/Sysinternals/bginfo.exe"
     args "\"C:/Sysinternals/Config.bgi\" /NOLICPROMPT /TIMER:0"
     not_if { Registry.value_exists?(AUTO_RUN_KEY, 'BGINFO') }
     action :create
   end

windows_batch
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_batch.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_batch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_batch_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To run a batch file that unzips and moves |ruby|:

.. code-block:: ruby

   windows_batch "unzip_and_move_ruby" do
     code <<-EOH
     7z.exe x #{Chef::Config[:file_cache_path]}/ruby-1.8.7-p352-i386-mingw32.7z  
        -oC:\\source -r -y
     xcopy C:\\source\\ruby-1.8.7-p352-i386-mingw32 C:\\ruby /e /y
     EOH
   end
   
   windows_batch "echo some env vars" do
     code <<-EOH
     echo %TEMP%
     echo %SYSTEMDRIVE%
     echo %PATH%
     echo %WINDIR%
     EOH
   end

windows_feature
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_feature.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_feature_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_feature_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_feature_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To enable a node as a DHCP server:

.. code-block:: ruby

   windows_feature "DHCPServer" do
     action :install
   end

To enable TFTP:

.. code-block:: ruby

   windows_feature "TFTP" do
     action :install
   end

To disable Telnet client/server:

.. code-block:: ruby

   %w{ TelnetServer TelnetClient }.each do |feature|
     windows_feature feature do
       action :remove
     end
   end

windows_package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_package.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_package_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_package_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_windows_package_install_putty.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_install_7zip.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_remove_7zip.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_install_notepad_plusplus.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_install_firefox.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_install_vlc.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_install_google_chrome.rst

.. include:: ../../steps/step_chef_lwrp_windows_package_remove_google_chrome.rst


windows_path
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_path.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_path_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_path_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add ``Sysinternals`` to the system path:

.. code-block:: ruby

   windows_path 'C:\Sysinternals' do
     action :add
   end


To remove |7zip| from the system path:

.. code-block:: ruby

   windows_path 'C:\7-Zip' do
     action :remove
   end


windows_reboot
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_reboot.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_reboot_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_reboot_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To schedule a reboot at the end of a |chef| run if a package installs:

.. code-block:: ruby

   windows_reboot 60 do
     reason 'cause chef said so'
     action :nothing
   end
   windows_package 'some_package' do
     action :install
     notifies :request, 'windows_reboot[60]'
   end

To cancel a previously-requested reboot:

.. code-block:: ruby

   windows_reboot 60 do
     action :cancel
   end


windows_registry
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_registry.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_registry_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_registry_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_windows_registry_enable_remote_desktop.rst

.. include:: ../../steps/step_chef_lwrp_windows_registry_match_proxy.rst


windows_shortcut
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_shortcut.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_shortcut_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_shortcut_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


windows_zipfile
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_zipfile.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_zipfile_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_windows_zipfile_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_windows_zipfile_unzip_remote.rst

.. include:: ../../steps/step_chef_lwrp_windows_zipfile_unzip_local.rst


yum_key
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_yum_key.rst

.. note:: This lightweight resource is part of the ``yum`` cookbook (http://community.opscode.com/cookbooks/yum).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_yum_key_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_yum_key_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add a |zenoss| |gnupg| key:

.. code-block:: ruby

   yum_key "RPM-GPG-KEY-zenoss" do 
     url "http://dev.zenoss.com/yum/RPM-GPG-KEY-zenoss" 
     action :add 
   end

To add a |zenoss| |gnupg| key:

.. code-block:: ruby

   yum_key "RPM-GPG-KEY-zenoss" do 
     action :remove 
   end

yum_repository
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_yum_repository.rst

.. note:: This lightweight resource is part of the ``yum`` cookbook (http://community.opscode.com/cookbooks/yum).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_yum_repository_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_yum_repository_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add a |zenoss| repository:

.. code-block:: ruby

   yum_repository "zenoss" do
     description "Zenoss Stable repo"
     url "http://dev.zenoss.com/yum/stable/" 
     key "RPM-GPG-KEY-zenoss" 
     action :add 
   end

To remove a |zenoss| repository:

.. code-block:: ruby

   yum_repository "zenoss" do 
     action :remove 
   end


zenoss_zenbatchload
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenbatchload.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenbatchload_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenbatchload_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenmd
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenmd.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenmd_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenmd_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenpack
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpack.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpack_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpack_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


zenoss_zenpatch
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpatch.rst

.. note:: This lightweight resource is part of the ``zenoss`` cookbook (http://community.opscode.com/cookbooks/zenoss).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpatch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_zenoss_zenpatch_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.








   










