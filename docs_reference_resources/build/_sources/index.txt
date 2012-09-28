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
* mysql
* pacman
* php
* python
* riak
* samba
* transmission
* windows

Some of the cookbooks contain more than one lightweight resource. Each lightweight resource is described individually in the following sections.

apt_repository
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_apt_repository.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:add``
     - |lwrp action add apt_repository|
   * - ``:remove``
     - |lwrp action remove apt_repository|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``repo_name``
     - |repo_name lwrp apt_repository|
   * - ``uri``
     - |uri lwrp apt_repository|
   * - ``distribution``
     - |distribution lwrp apt_repository|
   * - ``components``
     - |components lwrp apt_repository|
   * - ``deb_src``
     - |dev_src lwrp apt_repository|
   * - ``keyserver``
     - |keyserver lwrp apt_repository|
   * - ``key``
     - |key lwrp apt_repository|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - |lwrp action create aws_ebs_volume|
   * - ``:attach``
     - |lwrp action attach aws_ebs_volume|
   * - ``:detach``
     - |lwrp action detach aws_ebs_volume|
   * - ``:snapshot``
     - |lwrp action snapshot aws_ebs_volume|
   * - ``:prune``
     - |lwrp action prune aws_ebs_volume|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``aws_access_key``
     - |aws_access_key lwrp aws_ebs_volume|
   * - ``aws_secret_access_key``
     - |aws_secret_access_key lwrp aws_ebs_volume|
   * - ``size``
     - |size lwrp aws_ebs_volume|
   * - ``snapshot_id``
     - |snapshot_id lwrp aws_ebs_volume|
   * - ``availability_zone``
     - |availability_zone lwrp aws_ebs_volume|
   * - ``device``
     - |device lwrp aws_ebs_volume|
   * - ``volume_id``
     - |volume_id lwrp aws_ebs_volume|
   * - ``timeout``
     - |timeout lwrp aws_ebs_volume|
   * - ``snapshots_to_keep``
     - |snapshots_to_keep lwrp aws_ebs_volume|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:associate``
     - |lwrp action associate aws_elastic_ip|
   * - ``:disassociate``
     - |lwrp action disassociate aws_elastic_ip|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``aws_access_key``
     - |aws_access_key lwrp aws_elastic_ip|
   * - ``aws_secret_access_key``
     - |aws_secret_access_key lwrp aws_elastic_ip|
   * - ``ip``
     - |ip lwrp aws_elastic_ip|
   * - ``timeout``
     - |timeout lwrp aws_elastic_ip|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_associate.rst

.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_disassociate.rst

bluepill_service
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_bluepill_service.rst

.. note:: This lightweight resource is part of the ``bluepill`` cookbook (http://community.opscode.com/cookbooks/bluepill).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:start``
     - |lwrp action start bluepill_service|
   * - ``:stop``
     - |lwrp action stop bluepill_service|
   * - ``:enable``
     - |lwrp action enable bluepill_service|
   * - ``:disable``
     - |lwrp action disable bluepill_service|
   * - ``:load``
     - |lwrp action load bluepill_service|
   * - ``:restart``
     - |lwrp action restart bluepill_service|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``service_name``
     - |service_name lwrp bluepill_service|
   * - ``variables``
     - |variables lwrp bluepill_service|
   * - ``supports``
     - |supports lwrp bluepill_service|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:enable``
     - |lwrp action enable chef_handler|
   * - ``:disable``
     - |lwrp action disable chef_handler|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``class_name``
     - |class_name lwrp chef_handler|
   * - ``source``
     - |source lwrp chef_handler|
   * - ``arguments``
     - |arguments lwrp chef_handler|
   * - ``supports``
     - |supports lwrp chef_handler|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:start``
     - |lwrp action start daemontools_service|
   * - ``:stop``
     - |lwrp action stop daemontools_service|
   * - ``:restart``
     - |lwrp action restart daemontools_service|
   * - ``:up``
     - |lwrp action up daemontools_service|
   * - ``:once``
     - |lwrp action once daemontools_service|
   * - ``:pause``
     - |lwrp action pause daemontools_service|
   * - ``:cont``
     - |lwrp action cont daemontools_service|
   * - ``:hup``
     - |lwrp action hup daemontools_service|
   * - ``:alrm``
     - |lwrp action alrm daemontools_service|
   * - ``:int``
     - |lwrp action int daemontools_service|
   * - ``:term``
     - |lwrp action term daemontools_service|
   * - ``:kill``
     - |lwrp action kill daemontools_service|
   * - ``:enable``
     - |lwrp action enable daemontools_service|
   * - ``:disable``
     - |lwrp action disable daemontools_service|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``service_name``
     - |service_name lwrp daemontools_service|
   * - ``directory``
     - Required. |directory lwrp daemontools_service|
   * - ``template``
     - |template lwrp daemontools_service|
   * - ``cookbook``
     - |cookbook lwrp daemontools_service|
   * - ``variables``
     - |variables lwrp daemontools_service|
   * - ``owner``
     - |owner lwrp daemontools_service|
   * - ``group``
     - |group lwrp daemontools_service|
   * - ``finish``
     - |finish lwrp daemontools_service|
   * - ``log``
     - |log lwrp daemontools_service|
   * - ``env``
     - |env lwrp daemontools_service|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_daemontools_service_setup_directory.rst

djbdns_rr
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_djbdns_rr.rst

.. note:: This lightweight resource is part of the ``djbdns`` cookbook (http://community.opscode.com/cookbooks/djbdns).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:add``
     - |lwrp action add djbdns_rr|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``fqdn``
     - |fqdn lwrp djbdns_rr|
   * - ``ip``
     - Required. |ip lwrp djbdns_rr|
   * - ``type``
     - |type lwrp djbdns_rr|
   * - ``cwd``
     - |cwd lwrp djbdns_rr|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - |lwrp action install dmg_package|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``app``
     - |app lwrp dmg_package|
   * - ``source``
     - |source lwrp dmg_package|
   * - ``destination``
     - |destination lwrp dmg_package|
   * - ``checksum``
     - |checksum lwrp dmg_package|
   * - ``volumes_dir``
     - |volumes_dir lwrp dmg_package|
   * - ``dmg_name``
     - |dmg_name lwrp dmg_package|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:delete``
     - |lwrp action delete dynect_rr|
   * - ``:create``
     - |lwrp action create dynect_rr|
   * - ``:update``
     - |lwrp action update dynect_rr|
   * - ``:replace``
     - |lwrp action replace dynect_rr|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``record_type``
     - |record_type lwrp dynect_rr|
   * - ``rdata``
     - |rdata lwrp dynect_rr|
   * - ``ttl``
     - |ttl lwrp dynect_rr|
   * - ``fqdn``
     - |fqdn lwrp dynect_rr|
   * - ``username``
     - |username lwrp dynect_rr|
   * - ``customer``
     - |customer lwrp dynect_rr|
   * - ``password``
     - |password lwrp dynect_rr|
   * - ``zone``
     - |zone lwrp dynect_rr|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_dynect_rr_create_record.rst

firewall
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_firewall.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:enable``
     - |lwrp action enable firewall|
   * - ``:disable``
     - |lwrp action disable firewall|
   * - ``:reset``
     - |lwrp action reset firewall|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - |name lwrp firewall|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_firewall_enable.rst

firewall_rule
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_firewall_rule.rst

.. note:: This lightweight resource is part of the ``firewall`` cookbook (http://community.opscode.com/cookbooks/firewall), which provides a set of primitives for managing firewalls and associated rules.

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:allow``
     - |lwrp action allow firewall_rule|
   * - ``:deny``
     - |lwrp action deny firewall_rule|
   * - ``:reject``
     - |lwrp action reject firewall_rule|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - |name lwrp firewall_rule|
   * - ``protocol``
     - |protocol lwrp firewall_rule|
   * - ``port``
     - |port lwrp firewall_rule|
   * - ``source``
     - |source lwrp firewall_rule|
   * - ``destination``
     - |destination lwrp firewall_rule|
   * - ``position``
     - |position lwrp firewall_rule|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_ssh.rst

.. include:: ../../steps/step_chef_lwrp_firewall_rule_open_tcp.rst

mysql_database
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_mysql_database.rst

.. note:: This lightweight resource is part of the ``mysql`` cookbook (http://community.opscode.com/cookbooks/mysql).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:flush_tables_with_read_lock``
     - |lwrp action flush_tables_with_read_lock mysql_database|
   * - ``:unflush_tables``
     - |lwrp action unflush_tables mysql_database|
   * - ``:create_db``
     - |lwrp action create_db mysql_database|
   * - ``:query``
     - |lwrp action query mysql_database|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``host``
     - |host lwrp mysql_database|
   * - ``username``
     - |username lwrp mysql_database|
   * - ``password``
     - |password lwrp mysql_database|
   * - ``database``
     - |database lwrp mysql_database|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_mysql_database_create_database.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_flush_tables.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_query_database.rst

.. include:: ../../steps/step_chef_lwrp_mysql_database_unlock_tables.rst

pacman_aur
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_pacman_aur.rst

.. note:: This lightweight resource is part of the ``pacman`` cookbook (http://community.opscode.com/cookbooks/pacman).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:build``
     - |lwrp action build pacman_aur|
   * - ``:install``
     - |lwrp action install pacman_aur|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name lwrp pacman_aur|
   * - ``version``
     - |version lwrp pacman_aur|
   * - ``builddir``
     - |builddir lwrp pacman_aur|
   * - ``options``
     - |options lwrp pacman_aur|
   * - ``pkgbuild_src``
     - |pkgbuild_src lwrp pacman_aur|
   * - ``patches``
     - |patches lwrp pacman_aur|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - |lwrp action install pacman_group|
   * - ``:remove``
     - |lwrp action remove pacman_group|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name lwrp pacman_group|
   * - ``options``
     - |package_name lwrp pacman_group|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_pacman_group_base_devel.rst

php_pear_channel
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - |lwrp action install php_pear|
   * - ``:upgrade``
     - |lwrp action upgrade php_pear|
   * - ``:remove``
     - |lwrp action remove php_pear|
   * - ``:purge``
     - |lwrp action purge php_pear|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name lwrp php_pear|
   * - ``version``
     - |version lwrp php_pear|
   * - ``preferred_state``
     - |preferred_state lwrp php_pear|
   * - ``directives``
     - |directives lwrp php_pear|
   * - ``options``
     - |options lwrp php_pear|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_php_pear_install_apc_pecl.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_horde_beta.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_mongodb_pecl.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_specific_version.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_install_yaml.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_upgrade.rst

php_pear
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_php_pear_channel.rst

.. note:: This lightweight resource is part of the ``php`` cookbook (http://community.opscode.com/cookbooks/php).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:discover``
     - |lwrp action discover php_pear_channel|
   * - ``:add``
     - |lwrp action add php_pear_channel|
   * - ``:update``
     - |lwrp action update php_pear_channel|
   * - ``:remove``
     - |lwrp action remove php_pear_channel|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``channel_name``
     - |channel_name lwrp php_pear_channel|
   * - ``channel_xml``
     - |channel_xml lwrp php_pear_channel|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_php_pear_channel_discover_horde.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_channel_download_then_add.rst

.. include:: ../../steps/step_chef_lwrp_php_pear_channel_update_main_channels.rst

python_pip
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_python_pip.rst

.. note:: This lightweight resource is part of the ``python`` cookbook (http://community.opscode.com/cookbooks/python).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - |lwrp action install python_pip|
   * - ``:upgrade``
     - |lwrp action upgrade python_pip|
   * - ``:remove``
     - |lwrp action remove python_pip|
   * - ``:purge``
     - |lwrp action purge python_pip|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name lwrp python_pip|
   * - ``version``
     - |version lwrp python_pip|
   * - ``virtualenv``
     - |virtualenv lwrp python_pip|
   * - ``options``
     - |options lwrp python_pip|

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
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - |lwrp action create python_virtualenv|
   * - ``:delete``
     - |lwrp action delete python_virtualenv|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``path``
     - |path lwrp python_virtualenv|
   * - ``interpreter``
     - |interpreter lwrp python_virtualenv|
   * - ``owner``
     - |owner lwrp python_virtualenv|
   * - ``group``
     - |group lwrp python_virtualenv|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

.. include:: ../../steps/step_chef_lwrp_python_virtualenv_create_python.rst

.. include:: ../../steps/step_chef_lwrp_python_virtualenv_create_ubuntu.rst


riak_cluster
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_riak_cluster.rst

.. note:: This lightweight resource is part of the ``riak`` cookbook (http://community.opscode.com/cookbooks/riak).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:join``
     - |lwrp action join riak_cluster|
   * - ``:wait_for_ringready``
     - |lwrp action wait_for_ringready riak_cluster|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cluster_name``
     - The name of the cluster.
   * - ``cluster_members``
     - |cluster_members lwrp riak_cluster|
   * - ``node_name``
     - |cluster_name lwrp riak_cluster|
   * - ``timeout``
     - |timeout lwrp name_of_resource|
   * - ``riak_admin_path``
     - |riak_admin_path lwrp riak_cluster|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_riak_cluster_add_to_cluster.rst

samba_user
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_samba_user.rst

.. note:: This lightweight resource is part of the ``samba`` cookbook (http://community.opscode.com/cookbooks/samba).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - |lwrp action create samba_user|
   * - ``:enable``
     - |lwrp action enable samba_user|
   * - ``:delete``
     - |lwrp action delete samba_user|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``password``
     - |password lwrp samba|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_samba_user_create.rst

transmission_torrent_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_transmission_torrent_file.rst

.. note:: This lightweight resource is part of the ``transmission`` cookbook (http://community.opscode.com/cookbooks/transmission).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - |lwrp action create transmission_torrent_file|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``path``
     - The path to a file.
   * - ``torrent``
     - |torrent lwrp transmission_torrent_file|
   * - ``blocking``
     - |blocking lwrp transmission_torrent_file|
   * - ``continue_seeding``
     - |continue_seeding lwrp transmission_torrent_file|
   * - ``owner``
     - |owner lwrp transmission_torrent_file|
   * - ``group``
     - |group lwrp transmission_torrent_file|
   * - ``rpc_host``
     - |rpc_host lwrp transmission_torrent_file|
   * - ``rpc_port``
     - |rpc_port lwrp transmission_torrent_file|
   * - ``rpc_username``
     - |rpc_username lwrp transmission_torrent_file|
   * - ``rpc_password``
     - |rpc_password lwrp transmission_torrent_file|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_transmission_torrent_file_download_iso.rst

.. include:: ../../steps/step_chef_lwrp_transmission_torrent_file_download_iso_continue_seeding.rst



windows_package
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_package.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - |lwrp action install windows_package|
   * - ``:remove``
     - |lwrp action remove windows_package|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``package_name``
     - |package_name lwrp windows_package| 
   * - ``source``
     - |source lwrp windows_package|
   * - ``installer_type``
     - |installer_type lwrp windows_package|
   * - ``options``
     - |options lwrp windows_package|

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


windows_registry
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_registry.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - |lwrp action create windows_registry|
   * - ``:modify``
     - |lwrp action modify windows_registry|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``key_name``
     - |key_name lwrp windows_registry|
   * - ``values``
     - |values lwrp windows_registry|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_windows_registry_enable_remote_desktop.rst

.. include:: ../../steps/step_chef_lwrp_windows_registry_match_proxy.rst


windows_zipfile
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_windows_zipfile.rst

.. note:: This lightweight resource is part of the ``windows`` cookbook (http://community.opscode.com/cookbooks/windows).

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:unzip``
     - |lwrp action unzip windows_zipfile|

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``path_to_location``
     - |path_to_location lwrp windows_zipfile|
   * - ``source``
     - |source lwrp windows_zipfile|
   * - ``overwrite``
     - |overwrite lwrp windows_zipfile|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_windows_zipfile_unzip_remote.rst

.. include:: ../../steps/step_chef_lwrp_windows_zipfile_unzip_local.rst










   










