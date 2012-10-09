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
To reload a service based on a template **jamescott: WHAT DOES THIS ACTUALLY DO?**:

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create cookbook_file|
   * - ``:create_if_missing``
     - |resource action create_if_missing cookbook_file|
   * - ``:delete``
     - |resource action delete cookbook_file|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - |backup resource cookbook_file|
   * - ``group``
     - |group resource cookbook_file|
   * - ``mode``
     - |mode resource cookbook_file|
   * - ``rights``
     - |windows| only. |rights resource cookbook_file|
   * - ``inherits``
     - |inherits resource cookbook_file|
   * - ``owner``
     - |owner resource cookbook_file|
   * - ``path``
     - |path resource cookbook_file|
   * - ``source``
     - |source resource cookbook_file|
   * - ``cookbook``
     - |cookbook resource cookbook_file|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource cookbook file| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::CookbookFile``
     - ``cookbook_file``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_cookbook_file_transfer_a_file.rst


cron
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_cron.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create cron|
   * - ``:delete``
     - |resource action delete cron|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``minute``
     - |minute resource cron|
   * - ``hour``
     - |hour resource cron|
   * - ``day``
     - |day resource cron|
   * - ``month``
     - |month resource cron|
   * - ``weekday``
     - |weekday resource cron|
   * - ``command``
     - |command resource cron|
   * - ``user``
     - |user resource cron|
   * - ``mailto``
     - |mailto resource cron|
   * - ``path``
     - |path resource cron|
   * - ``home``
     - |home resource cron|
   * - ``shell``
     - |shell resource cron|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource cron| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Cron``
     - ``cron``
     - Yes
     - This is the default provider for all platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:deploy``
     - Default. |resource action deploy deploy|
   * - ``:force_deploy``
     - |resource action force_deploy deploy|
   * - ``:rollback``
     - |resource action rollback deploy|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``deploy_to``
     - |deploy_to resource deploy|
   * - ``repository``
     - |repository resource deploy|
   * - ``repo``
     - |repo resource deploy|
   * - ``revision``
     - |revision resource deploy|
   * - ``branch``
     - The alias for the revision.
   * - ``user``
     - |user resource deploy|
   * - ``group``
     - |group resource deploy|
   * - ``svn_username``
     - |svn_username resource deploy|
   * - ``svn_password``
     - |svn_password resource deploy|
   * - ``svn_arguments``
     - |svn_arguments resource deploy|
   * - ``shallow_clone``
     - |shallow_clone resource deploy|
   * - ``enable_submodules``
     - |enable_submodules resource deploy|
   * - ``remote``
     - |remote resource deploy|
   * - ``ssh_wrapper``
     - |ssh_wrapper resource deploy|
   * - ``git_ssh_wrapper``
     - |git_ssh_wrapper resource deploy|
   * - ``scm_provider``
     - |scm_provider resource deploy|
   * - ``repository_cache``
     - |repository_cache resource deploy|
   * - ``environment``
     - |environment resource deploy|
   * - ``purge_before_symlink``
     - |purge_before_symlink resource deploy|
   * - ``create_dirs_before_symlink``
     - |create_dirs_before_symlink resource deploy|
   * - ``symlinks``
     - |symlinks resource deploy|
   * - ``symlink_before_migrate``
     - |symlink_before_migrate resource deploy|
   * - ``migrate``
     - |migrate resource deploy|
   * - ``migration_command``
     - |migration_command resource deploy|
   * - ``restart_command``
     - |restart_command resource deploy|
   * - ``rollback_on_error``
     - |rollback_on_error resource deploy|
   * - ``before_migrate``
     - |before_migrate resource deploy|
   * - ``before_symlink``
     - |before_symlink resource deploy|
   * - ``before_restart``
     - |before_restart resource deploy|
   * - ``after_restart``
     - |after_restart resource deploy|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The |resource deploy| resource providers are used to determine whether to deploy based on whether the release directory in which the deployment is to be made actually exists. Use the following providers to use the |resource deploy| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Deploy::TimstampedDeploy``
     - ``timestamped_deploy``. See below for more information.
     - Yes
     - This is the default provider for all platforms. 
   * - ``Chef::Provider::Deploy::Revision``
     - ``deploy_revision``, ``deploy_branch``
     - 
     -  See below for more information.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create directory|
   * - ``:delete``
     - |resource action delete directory|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``group``
     - |group resource directory|
   * - ``mode``
     - |mode resource directory|
   * - ``rights``
     - |rights resource directory|
   * - ``inherits``
     - |inherits resource directory|
   * - ``owner``
     - |owner resource directory|
   * - ``path``
     - |path resource directory|
   * - ``recursive``
     - |recursive resource directory|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource directory| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Directory``
     - ``directory``
     - Yes
     - This is the default provider for all platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create env|
   * - ``:delete``
     - |resource action delete env|
   * - ``:modify``
     - |resource action modify env|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``key_name``
     - |key_name resource directory|
   * - ``value``
     - |value resource directory|
   * - ``delim``
     - |delim resource directory|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource env| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Env::Windows``
     - ``env``
     - Yes
     - This is the default provider for all |windows| platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_environment_set_variable.rst


erlang_call
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_erlang_call.rst

.. note:: The ``erl_call`` command needs to be on the path for this resource to work properly. **jamescott: HOW DO WE KNOW IF THE erl_call COMMAND IS "ON THE PATH"?**

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:run``
     - Default. |resource action run erlang|
   * - ``:nothing``
     - |resource action nothing erlang|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - |code resource erlang_call|
   * - ``cookie``
     - |cookie resource erlang_call|
   * - ``distributed``
     - |distributed resource directory|
   * - ``name_type``
     - |name_type resource directory|
   * - ``node_name``
     - |node_name resource directory|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource erlang call| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::ErlCall``
     - ``erl_call``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_erlang_call_run_command_on_node.rst


execute
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_execute.rst

.. note:: Use the |resource script| resource to execute a script using a specific interpreter (|ruby|, |python|, |perl|, |csh|, or |bash|).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:run``
     - Default. |resource action run execute|
   * - ``:nothing``
     - |resource action nothing execute|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |command resource execute|
   * - ``creates``
     - |creates resource execute|
   * - ``cwd``
     - |cwd resource execute|
   * - ``environment``
     - |environment resource execute|
   * - ``group``
     - |group resource execute|
   * - ``path``
     - |path resource execute|
   * - ``returns``
     - |returns resource execute|
   * - ``timeout``
     - |timeout resource execute|
   * - ``user``
     - |user resource execute|
   * - ``umask``
     - |umask resource execute|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource execute| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Execute``
     - ``execute``
     - Yes
     - This is the default provider for all platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create file|
   * - ``:create_if_missing``
     - |resource action create_if_missing file|
   * - ``:delete``
     - Default. |resource action delete file|
   * - ``:touch``
     - |resource action touch file|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``path``
     - |path resource file|
   * - ``backup``
     - |backup resource file|
   * - ``group``
     - |group resource file|
   * - ``mode``
     - |mode resource file|
   * - ``rights``
     - |rights resource file|
   * - ``inherits``
     - |inherits resource file|
   * - ``owner``
     - |owner resource file|	
   * - ``content``
     - |content resource file|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource file| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::File``
     - ``file``
     - Yes
     - This is the default provider for all platforms. 

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create group|
   * - ``:remove``
     - |resource action remove group|
   * - ``:modify``
     - |resource action modify group|
   * - ``:manage``
     - |resource action manage group|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``group_name``
     - |group_name resource group|
   * - ``gid``
     - |gid resource group|
   * - ``members``
     - |members resource group|
   * - ``append``
     - |append resource group|
   * - ``system``
     - |system resource group|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource group| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Group::Dscl``
     - 
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::Group::Gpasswd``
     - 
     - Yes
     - This is the default provider for all platforms except |mac os x|, |freebsd|, |solaris|, and |windows|, which have their own dedicated providers.
   * - ``Chef::Provider::Group::Pw``
     - 
     - Yes
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Group::Usermod``
     - 
     - 
     - This is the default provider for the |solaris| platform.
   * - ``Chef::Provider::Group::Windows``
     - 
     - 
     - This is the default provider for the |windows| platform.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_group_append_user.rst


http_request
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_http_request.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:get``
     - Default. |resource action get http_request|
   * - ``:put``
     - |resource action put http_request|
   * - ``:post``
     - |resource action post http_request|
   * - ``:delete``
     - |resource action delete http_request|
   * - ``:head``
     - |resource action head http_request|
   * - ``:options``
     - |resource action options http_request|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``url``
     - |url resource http_request|
   * - ``message``
     - |message resource http_request|
   * - ``headers``
     - |headers resource http_request|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource http request| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::HttpRequest``
     - ``http_request``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_http_request_send_get.rst

.. include:: ../../steps/step_chef_resource_http_request_send_post.rst


ifconfig
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ifconfig.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:add``
     - Default. |resource action add ifconfig|
   * - ``:delete``
     - |resource action delete ifconfig|
   * - ``:enable``
     - |resource action enable ifconfig|
   * - ``:disable``
     - |resource action disable ifconfig|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``target``
     - |target resource ifconfig|
   * - ``device``
     - |device resource ifconfig|
   * - ``hwaddr``
     - |hwaddr resource ifconfig|
   * - ``inet_addr``
     - |inet_addr resource ifconfig|
   * - ``bcast``
     - |bcast resource ifconfig|
   * - ``mask``
     - |mask resource ifconfig|
   * - ``mtu``
     - |mtu resource ifconfig|
   * - ``metric``
     - |metric resource ifconfig|
   * - ``onboot``
     - |onboot resource ifconfig|
   * - ``network``
     - |network resource ifconfig|
   * - ``bootproto``
     - |bootproto resource ifconfig|
   * - ``onparent``
     - |onparent resource ifconfig|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource ifconfig| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Ifconfig``
     - ``ifconfig``
     - Yes
     - This is the default provider for all platforms. Currently, this provider only writes out a start-up configuration file for the interface on Red Hat-based platforms (it writes to /etc/sysconfig/network-scripts/ifcfg-#{device_name}). 

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_ifconfig_configure_network_interface.rst


link
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_link.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create link|
   * - ``:delete``
     - |resource action delete link|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``target_file``
     - |target_file resource link|
   * - ``to``
     - |to resource link|
   * - ``link_type``
     - |link_type resource link|
   * - ``owner``
     - |owner resource link|
   * - ``group``
     - |group resource link|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource link| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Link``
     - ``link``
     - Yes
     - This is the default provider for all platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:write``
     - Default. |resource action write log|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``level``
     - |level resource log|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource log| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Log::ChefLog``
     - ``log``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_log_set_info.rst

.. include:: ../../steps/step_chef_resource_log_set_debug.rst


mdadm
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mdadm.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create mdadm|
   * - ``:assemble``
     - |resource action assemble mdadm|
   * - ``:stop``
     - |resource action stop mdadm|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``raid_device``
     - |raid_device resource mdadm|
   * - ``devices``
     - |devices resource mdadm|
   * - ``level``
     - |level resource mdadm|
   * - ``chunk``
     - |chunk resource mdadm|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource mdadm| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Mdadm``
     - ``mdadm``
     - Yes
     - This is the default provider for the |linux| platform. 

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_mdadm_assemble_raid_array.rst


mount
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_mount.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:mount``
     - Default. |resource action mount mount|
   * - ``:umount``
     - |resource action umount mount|
   * - ``:remount``
     - |resource action remount mount|
   * - ``:enable``
     - |resource action enable mount|
   * - ``:disable``
     - |resource action disable mount|

.. note:: Order matters when passing multiple actions. For example: ``action [:mount, :enable]`` ensures that the file system is mounted before it is enabled.

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``mount_point``
     - |mount_point resource mount|
   * - ``device``
     - |device resource mount|
   * - ``device_type``
     - |device_type resource mount|
   * - ``fstype``
     - |fstype resource mount|
   * - ``options``
     - |options resource mount|
   * - ``dump``
     - |dump resource mount|
   * - ``pass``
     - |pass resource mount|
   * - ``supports``
     - |supports resource mount|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource mount| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Mount``
     - ``mount``
     - Yes
     - This is the default provider for all platforms, except for |windows|.
   * - ``Chef::Provider::Mount::Windows``
     - ``mount``
     - Yes
     - This is the default provider for the |windows| platform.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:reload``
     - Default. |resource action reload ohai|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``plugin``
     - |plugin resource ohai|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource ohai| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Ohai``
     - ``ohai``
     - Yes
     - This is the default provider for all platforms. 

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
* The |omnibus installer| will search the PATH for a |gem| command rather than defaulting to the current |gem| environment. As part of ``enforce_path_sanity``, the ``bin`` directories area dded to the PATH, which means when there are no other proceeding |rubygems|, the installation will still be operated against it. **jamescott: THIS IS CONFUSING IN THE WIKI AND IS STILL CONFUSING HERE. JTIMBERMAN OR BMCLELLAN SHOULD REVIEW.**

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - Default. |resource action install package|
   * - ``:upgrade``
     - |resource action upgrade package|
   * - ``:remove``
     - |resource action remove package|
   * - ``:purge``
     - |resource action purge package|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name resource package|
   * - ``version``
     - |version resource package|
   * - ``response_file``
     - |response_file resource package|
   * - ``source``
     - |source resource package|
   * - ``options``
     - |options resource package|
   * - ``gem_binary``
     - |gem_binary resource package|
   * - ``arch``
     - |arch resource package|
   * - ``flush_cache``
     - |flush_cache resource package|
   * - ``allow_downgrade``
     - |allow_downgrade resource package|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource package| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Package::Apt``
     - ``apt_package``
     - Yes
     - This is the default provider for the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Package::Dpkg``
     - ``dpkg_package``
     - 
     - This is the default provider for the |debian dkpg| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::EasyInstall``
     - ``easy_install_package``
     - 
     - This is the default provider for the |python| **jamescott: PYTHON IS CORRECT?**.
   * - ``Chef::Provider::Package::Freebsd``
     - ``freebsd_package``
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Package::Macports``
     - ``macports_package``
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::Package::Portage``
     - ``portage_package``
     - 
     - This is the default provider for the |gentoo| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rpm``
     - ``rpm_package``
     - 
     - This is the default provider for the |rpm| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``gem_package``
     - 
     - This is the default provider for packages that are only included in recipes. |gem_package provider package|
   * - ``Chef::Provider::Package::Rubygems``
     - ``chef_gem``
     - 
     - This is the default provider for when installing a gem only for |chef| resources. |chef_gem provider package|
   * - ``Chef::Provider::Package::Yum``
     - ``yum_package``
     - 
     - This is the default provider for the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Package::Zypper``
     - ``zypper_package``
     - 
     - This is the default provider for the |suse| platform.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:run``
     - Default. |resource action run powershell_script|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |command resource powershell_script|
   * - ``code``
     - |code resource powershell_script|
   * - ``interpreter``
     - |interpreter resource powershell_script|
   * - ``flags``
     - |flags resource powershell_script|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource powershell script| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::PowershellScript``
     - ``powershell``
     - Yes
     - This is the default provider for all platforms. 

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
This resource does not have any actions.

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook resource remote_directory|
   * - ``files_backup``
     - |files_backup resource remote_directory|
   * - ``files_owner``
     - |files_owner resource remote_directory|
   * - ``files_group``
     - |files_group resource remote_directory|
   * - ``files_mode``
     - |files_mode resource remote_directory|
   * - ``rights``
     - |rights resource remote_directory|
   * - ``inherits``
     - |inherits resource remote_directory|
   * - ``path``
     - |path resource remote_directory|
   * - ``source``
     - |source resource remote_directory|
   * - ``purge``
     - |purge resource remote_directory|
   * - ``overwrite``
     - |overwrite resource remote_directory|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource remote directory| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Directory::RemoteDirectory``
     - ``remote_directory``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_remote_directory_recursive_transfer.rst


remote_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_remote_file.rst

**jamescott: NEED NEW DESCRIPTION IN INCLUDE FILE -- THIS ONE HAS ROUTES.**

.. note:: Fetching files from the ``files/`` directory in a cookbook should be done with the |resource cookbook file| resource.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create remote_file|
   * - ``:create_if_missing``
     - |resource action create_if_missing remote_file|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``path``
     - |path resource remote_file|
   * - ``backup``
     - |backup resource remote_file|
   * - ``group``
     - |group resource remote_file|
   * - ``mode``
     - |mode resource remote_file|
   * - ``rights``
     - |rights resource remote_file|
   * - ``inherits``
     - |inherits resource remote_file|
   * - ``owner``
     - |owner resource remote_file|
   * - ``source``
     - |source resource remote_file|
   * - ``checksum``
     - |checksum resource remote_file|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource remote file| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::File::RemoteFile``
     - ``remote_file``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_remote_file_transfer_from_url.rst

.. include:: ../../steps/step_chef_resource_remote_file_transfer_remote_source_changes.rst


route
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_route.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:add``
     - Default. |resource action add route|
   * - ``:delete``
     - |resource action delete route|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``target``
     - |target resource route|
   * - ``netmask``
     - |netmask resource route|
   * - ``gateway``
     - |gateway resource route|
   * - ``device``
     - |device resource route|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource route| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Route``
     - ``route``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_route_add_host.rst

.. include:: ../../steps/step_chef_resource_route_delete_network.rst


ruby_block
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_ruby_block.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create ruby_block|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``block``
     - |block resource ruby_block|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource ruby block| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::RubyBlock``
     - ``ruby_block``
     - Yes
     - This is the default provider for all platforms.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_ruby_block_reread_chef_client.rst


scm
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_scm.rst

.. note:: This resource is often used in conjunction with the |resource deploy| resource.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:sync``
     - Default. |resource action sync scm|
   * - ``:checkout``
     - |resource action checkout scm|
   * - ``:export``
     - |resource action export scm|
   * - ``:force_export``
     - |svn| only. |resource action force_export scm|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``destination``
     - |destination resource scm|
   * - ``repository``
     - |repository resource scm|
   * - ``revision``
     - |revision resource scm|
   * - ``reference``
     - |reference resource scm|
   * - ``user``
     - |user resource scm|
   * - ``group``
     - |group resource scm|
   * - ``svn_username``
     - |svn_username resource scm|
   * - ``svn_password``
     - |svn_password resource scm|
   * - ``svn_arguments``
     - |svn_arguments resource scm|
   * - ``svn_info_args``
     - |svn_info_args resource scm|
   * - ``depth``
     - |depth resource scm|
   * - ``enable_submodules``
     - |enable_submodules resource scm|
   * - ``remote``
     - |remote resource scm|
   * - ``additional_remotes``
     - |additional_remotes resource scm|
   * - ``ssh_wrapper``
     - |ssh_wrapper resource scm|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource scm| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Git``
     - ``git``
     - 
     - This provider works only with |git|.
   * - ``Chef::Provider::Subversion``
     - ``subversion``
     - 
     - This provider work only with |svn|.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:run``
     - Default. |resource action run script|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - |command resource script|
   * - ``code``
     - |code resource script|
   * - ``interpreter``
     - |interpreter resource script|
   * - ``flags``
     - |flags resource script|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource script| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Resource::Script::Bash``
     - ``bash``
     - 
     - This is the provider used for the |bash| command interpreter.
   * - ``Chef::Resource::Script::Csh``
     - ``csh``
     - 
     - This is the provider used for the |csh| command interpreter.
   * - ``Chef::Resource::Script::Perl``
     - ``perl``
     - 
     - This is the provider used for the |perl| command interpreter.
   * - ``Chef::Resource::Script::Python``
     - ``python``
     - 
     - This is the provider used for the |python| command interpreter.
   * - ``Chef::Resource::Script::Ruby``
     - ``ruby``
     - 
     - This is the provider used for the |ruby| command interpreter.

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_resource_script_bash_provider_and_interpreter.rst

.. include:: ../../steps/step_chef_resource_script_bash_script.rst


service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_service.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:enable``
     - |resource action export service|
   * - ``:disable``
     - |resource action disable service|
   * - ``:nothing``
     - Default. |resource action nothing service|
   * - ``:start``
     - |resource action start service|
   * - ``:stop``
     - |resource action stop service|
   * - ``:restart``
     - |resource action restart service|
   * - ``:reload``
     - |resource action reload service|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``service_name``
     - |service_name resource service|
   * - ``pattern``
     - |pattern resource service|
   * - ``start_command``
     - |start_command resource service|
   * - ``stop_command``
     - |stop_command resource service|
   * - ``status_command``
     - |status_command resource service|
   * - ``restart_command``
     - |restart_command action write service|
   * - ``reload_command``
     - |reload_command resource service|
   * - ``supports``
     - |supports resource service|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource service| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Service::Init``
     - ``service``
     - Yes
     - This is the default provider for all platforms, unless there is a specific provider for a specific platform (see the other entries in this table).
   * - ``Chef::Provider::Service::Init::Debian``
     - 
     - 
     - This is the default provider for the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Service::Upstart``
     - 
     - 
     - This is the default provider for the |upstart| platform.
   * - ``Chef::Provider::Service::Init::Freebsd``
     - 
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Service::Init::Gentoo``
     - 
     - 
     - This is the default provider for the |gentoo| platform.
   * - ``Chef::Provider::Service::Init::Redhat``
     - 
     - 
     - This is the default provider for the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Service::Solaris``
     - 
     - 
     - This is the default provider for the |solaris| platform.
   * - ``Chef::Provider::Service::Windows``
     - 
     - 
     - This is the default provider for the |windows| platform.
   * - ``Chef::Provider::Service::Macosx``
     - 
     - 
     - This is the default provider for the |mac os x| platform.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create template|
   * - ``:create_if_missing``
     - |resource action create_if_missing template|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backup``
     - |backup resource template|
   * - ``cookbook``
     - |cookbook resource template|
   * - ``path``
     - |path resource template|
   * - ``source``
     - |source resource template|
   * - ``group``
     - |group resource template|
   * - ``mode``
     - |mode resource template|
   * - ``rights``
     - |rights resource template|
   * - ``inherits``
     - |inherits resource template|
   * - ``owner``
     - |owner resource template|
   * - ``variables``
     - |variables resource template|
   * - ``local``
     - |local resource template|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following provider to use the |resource template| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::File::Template``
     - ``template``
     - Yes
     - This is the default provider for all platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. |resource action create user|
   * - ``:remove``
     - |resource action remove user|
   * - ``:modify``
     - |resource action modify user|
   * - ``:manage``
     - |resource action manage user|
   * - ``:lock``
     - |resource action lock user|
   * - ``:unlock``
     - |resource action unlock user|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``username``
     - |username resource user|
   * - ``comment``
     - |comment resource user|
   * - ``uid``
     - |uid resource user|
   * - ``gid``
     - |gid resource user|
   * - ``home``
     - |home resource user|
   * - ``shell``
     - |shell resource user|
   * - ``password``
     - |password resource user|
   * - ``system``
     - |system resource user|
   * - ``supports``
     - |supports resource user|

Supported Features
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_supported_features.rst

Password Shadow Hash
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_user_password_shadow_hash.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following providers to use the |resource user| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::User::Useradd``
     - ``user``
     - Yes
     - This is the default provider for all platforms.
   * - ``Chef::Provider::User::Pw``
     - ``xxxxx``
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::User::Dscl``
     - ``xxxxx``
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::User::Windows``
     - ``xxxxx``
     - 
     - This is the default provider for all |windows| platforms.

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
This resource has the following has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - Default. |resource action install yum|
   * - ``:upgrade``
     - |resource action upgrade yum|
   * - ``:remove``
     - |resource action remove yum|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name resource yum|
   * - ``version``
     - |version resource yum|
   * - ``source``
     - |source resource yum|
   * - ``options``
     - |options resource yum|
   * - ``arch``
     - |arch resource yum|
   * - ``flush_cache``
     - |flush_cache resource yum|
   * - ``allow_downgrade``
     - |allow_downgrade resource yum|

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource does not have any providers.

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

.. include:: ../../steps/step_chef_resource_yum_package_install_yum_repo_from_package.rst






Lightweight Resources and Providers
=====================================================

Custom resources and providers can also be created using the |lwrp| DSL. |opscode| provides several cookbooks that define some commonly used |lwrp|. To use the lightweight resources provided by |opscode| the cookbook that defines it must also be used. These lightweight resources can be used within recipes to increase automation opportunities.

.. include:: ../../includes/includes_chef_cookbook_lightweight_resource.rst

.. include:: ../../includes/includes_chef_cookbook_lightweight_provider.rst

.. include:: ../../includes/includes_chef_cookbook_lightweight_file_locations.rst

The following groups of lightweight resources are available in open source cookbooks that are provided by |opscode|:

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



apt_preference -- NEEDS REVIEW
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







aws_elastic_lb -- NEEDS REVIEW
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


aws_resource_tag -- NEEDS REVIEW
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


freebsd_port_options -- NEEDS REVIEW
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_freebsd_port_options.rst

.. note:: This lightweight resource is part of the ``freebsd`` cookbook (http://community.opscode.com/cookbooks/freebsd).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_lwrp_freebsd_port_options_actions.rst

Attributes -- NEEDS REVIEW!
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

gunicorn_config -- NEEDS REVIEW
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


gunicorn_install -- NEEDS REVIEW
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


homebrew -- NEEDS REVIEW
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


iis_app -- NEEDS REVIEW
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


iis_config -- NEEDS REVIEW
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


iis_pool -- NEEDS REVIEW
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

iis_site -- NEEDS REVIEW
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


maven -- NEEDS REVIEW
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



nagios_nrpecheck -- NEEDS REVIEW
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



powershell -- NEEDS REVIEW
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


rabbitmq_plugin -- NEEDS REVIEW
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

rabbitmq_user -- NEEDS REVIEW
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


rabbitmq_vhost -- NEEDS REVIEW
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



supervisor_fcgi -- NEEDS REVIEW
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


supervisor_group -- NEEDS REVIEW
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


supervisor_service -- NEEDS REVIEW
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



sudo -- NEEDS REVIEW
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


users_manage -- NEEDS REVIEW
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


webpi_product -- NEEDS REVIEW
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



windows_auto_run -- NEEDS REVIEW
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

windows_batch -- NEEDS REVIEW
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

windows_feature -- NEEDS REVIEW
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


windows_path -- NEEDS REVIEW
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


windows_reboot -- NEEDS REVIEW
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


windows_shortcut -- NEEDS REVIEW
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


yum_key -- NEEDS REVIEW
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

yum_repository -- NEEDS REVIEW
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


zenoss_zenbatchload -- NEEDS REVIEW
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
To xxxxx:

.. code-block:: ruby

   xxxxx


zenoss_zenmd -- NEEDS REVIEW
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
To xxxxx:

.. code-block:: ruby

   xxxxx


zenoss_zenpack -- NEEDS REVIEW
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
To xxxxx:

.. code-block:: ruby

   xxxxx


zenoss_zenpatch -- NEEDS REVIEW
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
To xxxxx:

.. code-block:: ruby

   xxxxx








   










