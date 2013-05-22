=====================================================
Custom Lightweight Providers w/Chef Resources
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

A lightweight provider is a custom provider that defines the steps that are required to complete one (or more) actions defined by a lightweight resource. A lightweight provider and lightweight resource work together, each being defined in the same cookbook (the ``/providers`` and ``/resources`` subdirectories, respectively); together, they are referred as a LWRP (or "lightweight resource provider"). A lightweight provider is always authored using |ruby|. Anything that can be done using |ruby| can be done in a lightweight provider. In addition to using |ruby|, the |dsl provider| provides additional methods that are specific to |chef|.

Syntax
=====================================================
This section shows some of the common structural elements that appear a lightweight provider that is built in a way that leverages core |chef| resources (such as |resource file|, |resource template|, or |resource package|). Remember:

* A lightweight provider tells |chef| how to complete a task
* The structure of a lightweight provider will vary, depending on the complexity of the tasks required to complete an action
* At its core, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider

The syntax for a lightweight provider that is built to leverage |chef| resources is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end
   
   use_inline_resources
   
   action :action_name do
     condition test
       resource "resource_name" do
         Chef::Log.log_type "log_message"
         # a Chef recipe
         new_resource.updated_by_last_action(true)
       end
     end
   end
   
   def test()
     # some Ruby code
   end

where:

* ``whyrun_supported?`` indicates whether a lightweight provider can be run in |whyrun| mode
* ``use_inline_resources`` is used to tell |chef| to execute ``action`` blocks as part of a self-contained |chef| run. Using this method ensures that |chef| can notify parent lightweight resources after embedded resources have finished processing
* ``action`` is the code block that tells |chef| what to do when the ``:action_name`` is used in a recipe
* ``condition`` is a |ruby| condition statement (``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, or ``for``)
* ``test`` is used to test for idempotence; ``test`` can be defined inline within the ``action`` block, defined as a method using a ``def`` block elsewhere in the lightweight provider (shown as ``def test()``), or defined using any other pattern that is available in |ruby|
* ``resource`` is a |chef| resource written as a recipe
* ``Chef::Log.log_type`` is used to tell |chef| to create a log entry, where ``log_type`` is one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``
* ``updated_by_last_action`` is used to notify that a node was updated successfully

For example:

.. code-block:: ruby

   def whyrun_supported?
     true
   end
   
   use_inline_resources

   action :delete do
     if user_exists?(new_resource.user)
       cmdStr = "rabbitmqctl delete_user #{new_resource.user}"
       execute cmdStr do
         Chef::Log.debug "rabbitmq_user_delete: #{cmdStr}"
         Chef::Log.info "Deleting RabbitMQ user '#{new_resource.user}'."
         new_resource.updated_by_last_action(true)
       end
     end
   end
   
   def user_exists?(name)
     cmdStr = "rabbitmqctl -q list_users |grep '^#{name}\\b'"
     cmd = Mixlib::ShellOut.new(cmdStr)
     cmd.environment['HOME'] = ENV.fetch('HOME', '/root')
     cmd.run_command
     Chef::Log.debug "rabbitmq_user_exists?: #{cmdStr}"
     Chef::Log.debug "rabbitmq_user_exists?: #{cmd.stdout}"
     begin
       cmd.error!
       true
     rescue
       false
     end
   end


|dsl provider| Methods
=====================================================
The |dsl provider| is a |ruby| DSL that is used to help define a lightweight provider and to ensure that a lightweight provider takes the correct actions when it is called from a recipe. The |dsl provider| is a small DSL with just a few methods that are specific to |chef|. Because the |dsl provider| is a |ruby| DSL, anything that can be done using |ruby| can also be done when defining a lightweight provider.

action
-----------------------------------------------------
The ``action`` method is used to define the steps that will be taken for each of the possible actions defined by the lightweight resource. Each action must be defined in separate ``action`` blocks within the same file. The syntax for the ``action`` method is as follows:

.. code-block:: ruby

   action :action_name do
     if @current_resource.exists
       Chef::Log.info "#{ @new_resource } already exists - nothing to do."
     else
       resource "resource_name" do
         Chef::Log.info "#{ @new_resource } created."
       end
     end
     new_resource.updated_by_last_action(true)
   end

where:

* ``:action_name`` corresponds to an action defined by a lightweight resource
* ``if @current_resource.exists`` is a condition test that is using an instance variable to see if the object already exists; this is an example of a test for idempotency
* If the object already exists, a ``#{ @new_resource } already exists - nothing to do.`` log entry is created
* If the object does not already exists, the ``resource`` block is run. This block is a recipe that tells |chef| what to do. A ``#{ @new_resource } created.`` log entry is created

.. note:: The ``converge_by`` method is not included in the previous syntax example because when |whyrun| mode is enabled in a lightweight provider that leverages core |chef| resources, the ``converge_by`` blocks are already defined.

current_resource
-----------------------------------------------------
The ``current_resource`` method is used to represent a resource as it exists on the node at the beginning of the |chef| run. In other words: what the resource is currently. |chef| compares the resource as it exists on the node to the resource that is created during the |chef| run to determine what steps need to be taken to bring the resource into the desired state. This method is often used as an instance variable (``@current_resource``).

For example:

.. code-block:: ruby

   action :add do
     unless @current_resource.exists
       cmd = "#{appcmd} add app /site.name:\"#{@new_resource.app_name}\""
       cmd << " /path:\"#{@new_resource.path}\""
       cmd << " /applicationPool:\"#{@new_resource.application_pool}\"" if @new_resource.application_pool
       cmd << " /physicalPath:\"#{@new_resource.physical_path}\"" if @new_resource.physical_path
       Chef::Log.debug(cmd)
       shell_out!(cmd)
       Chef::Log.info("App created")
     else
       Chef::Log.debug("#{@new_resource} app already exists - nothing to do")
     end
   end

where the ``unless`` conditional statement checks to make sure the resource doesn't already exist, and then runs a series of commands if it doesn't. If the resource already exists, the log entry would be "Foo app already exists - nothing to do."

load_current_resource
-----------------------------------------------------
The ``load_current_resource`` method is used to find a resource on a node based on a collection of attributes. These attributes are defined in a lightweight resource and are loaded by |chef| when processing a recipe during a |chef| run. This method will ask |chef| to look on the node to see if a resource exists with specific matching attributes.

For example:

.. code-block:: ruby

   def load_current_resource
     @current_resource = Chef::Resource::TransmissionTorrentFile.new(@new_resource.name)
     Chef::Log.debug("#{@new_resource} torrent hash = #{torrent_hash}")
     @transmission = Opscode::Transmission::Client.new("foo:#{@new_resource.att1}@#{@new_resource.att2}:#{@new_resource.att3}/path")
     @torrent = nil
     begin
       @torrent = @transmission.get_torrent(torrent_hash)
       Chef::Log.info("Found existing #{@new_resource} in swarm with name of '#{@torrent.name}' and status of '#{@torrent.status_message}'")
       @current_resource.torrent(@new_resource.torrent)
     rescue
       Chef::Log.debug("Cannot find #{@new_resource} in the swarm")
     end
     @current_resource
   end

new_resource
-----------------------------------------------------
The ``new_resource`` method is used to represent a resource as it exists as loaded by |chef| during the |chef| run. In other words: what the resource should be. |chef| compares the resource as it exists on the node to the resource that is created during the |chef| run to determine what steps need to be taken to bring the resource into the desired state. This method can be used as an instance variable (``@new_resource``).

For example:

.. code-block:: ruby

   action :delete do 
    if exists?
      if ::File.writable?(@new_resource.path)
        Chef::Log.info("Deleting #{@new_resource} at #{@new_resource.path}")
        ::File.delete(@new_resource.path)
        new_resource.updated_by_last_action(true)
      else
        raise "Cannot delete #{@new_resource} at #{@new_resource.path}!"
      end
    end
  end

where |chef| checks to see if the file exists, then if the file is writable, and then attempts to delete the resource. ``path`` is an attribute of the new resource that is defined by the lightweight resource.

updated_by_last_action
-----------------------------------------------------
The ``updated_by_last_action`` method is used to notify a lightweight resource that a node was updated successfully. For example, the ``cron_d`` lightweight resource in the |cookbook cron| cookbook uses this method: 

.. code-block:: ruby

   action :create do
     t = template "/etc/cron.d/#{new_resource.name}" do
       cookbook new_resource.cookbook
       source "cron.d.erb"
       mode "0644"
       variables({
           :name => new_resource.name,
           :minute => new_resource.minute,
           :hour => new_resource.hour,
           :day => new_resource.day,
           :month => new_resource.month,
           :weekday => new_resource.weekday,
           :command => new_resource.command,
           :user => new_resource.user,
           :mailto => new_resource.mailto,
           :path => new_resource.path,
           :home => new_resource.home,
           :shell => new_resource.shell
         })
       action :create
     end
     new_resource.updated_by_last_action(t.updated_by_last_action?)
   end

where ``t.updated_by_last_action?`` uses a variable to check whether a new crontab entry was created from a template file and the |resource template| resource.

use_inline_resources
-----------------------------------------------------
A lightweight resource is created by the ``action`` block of a lightweight provider. When the resource collection is compiled, and as a lightweight resource is discovered by |chef|, each lightweight resource is inserted into the resource collection after the point at which it was discovered. For example, a resource collection may start out like this:

.. code-block:: ruby

   resource_one
   resource_two
   resource_three

If a lightweight resource is discovered while processing the second resource, it will be inserted into the resource collection like this:

.. code-block:: ruby

   resource_one
   resource_two
     lightweight_resource_one
   resource_three

If that lightweight resource then contains references to other |chef| resources (like |resource file|, |resource template|, or |resource cookbook_file|), then those additional resources are inserted into the resource collection in much the same way as the lightweight resource was. For example:

.. code-block:: ruby

   resource_one
   resource_two
     lightweight_resource_one
       embedded_resource_a
       embedded_resource_b
   resource_three

where resources are processed in exactly the same order as defined by the resource collection. In addition, each resource is processed fully before |chef| moves on to the next resource in the resource collection. 

This is how |chef| processes resources.

This behavior can create an situation where |chef| resources which have been embedded into the resource collection by a lightweight resource are unable to notify their parent lightweight resource when processing is finished. For example:

.. code-block:: ruby

   resource_one
     lightweight_resource_one
       a
       b
   resource_two
     lightweight_resource_two
       c
   resource_three

where embedded resources ``a`` and ``b`` would be unable to notify ``lightweight_resource_one`` and embedded resource ``c`` would be unable to notify ``lightweight_resource_two``.

This is the default behavior of |chef|. This is often not the desired behavior. To resolve this issue, an additional method named ``use_inline_resources`` is added to the top of a lightweight provider. This method ensures that |chef| executes the ``action`` blocks within that lightweight resource as part of a self-contained |chef| run and then also ensures that |chef| can notify the parent lightweight resource when the embedded resources have finished processing. Once notified, the parent lightweight resource is marked as updated (``updated_by_last_action``) and then any notifications that are set on that lightweight resource may be triggered normally.

whyrun_supported?
-----------------------------------------------------
|whyrun| mode is a way to see what |chef| would have configured, had an actual |chef| run occurred. This approach is similar to the concept of "no-operation" (or "no-op"): decide what should be done, but then don't actually do anything until it's done right. This approach to configuration management can help identify where complexity exists in the system, where inter-dependencies may be located, and to verify that everything will be configured in the desired manner.

When |whyrun| mode is enabled, a |chef| run will occur that does everything up to the point at which configuration would normally occur. This includes getting the configuration data, authenticating to the |chef server|, rebuilding the node object, expanding the run list, getting the necessary cookbook files, resetting node attributes, identifying the resources, and building the resource collection and does not include mapping each resource to a provider or configuring any part of the system.

.. note:: why-run mode is not a replacement for running cookbooks in a test environment that mirrors the production environment. |opscode| uses why-run mode to learn more about what is going on, but also test-kitchen on developer systems, along with an internal |openstack| cloud and external cloud providers to test more thoroughly.

The ``whyrun_supported?`` method is used to tell |chef| that a lightweight provider supports |whyrun| mode. The syntax for the ``whyrun_supported?`` method is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

where ``whyrun_supported?`` is set to ``true`` for any lightweight provider that supports using |whyrun| mode. When |whyrun| mode is supported by the a lightweight provider, the ``converge_by`` method is used to define the strings that are logged by |chef| when it is run in |whyrun| mode.

.. note:: When a lightweight provider contains only |chef| resources, the ``converge_by`` method is not required because it is already built into all of the |chef| resources. LINK TO CORE RESOURCES HERE.

Condition Statements
=====================================================
A lightweight provider can use any conditional statement that can be used in |ruby|: ``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, and ``for``. A condition statement can test for:

* A |ruby| class (such as ``::File`` or ``::String``)
* A |chef| class (such as ``::Chef::Mixin::ShellOut``)
* Conditions present on the node by using ``current_resource`` or ``@current_resource``
* Conditions present within the resource being processed by |chef| during the |chef| run by using ``new_resource`` or ``@new_resource``
* To verify if a resource was updated by using ``updated_by_last_action``, for example: ``@new_resource.updated_by_last_action``

and so on.

For example, an ``if`` statement is used to check if a file exists (``::File.exists?``), and then if the file exists to delete a key from that file.

.. code-block:: ruby

   action :remove do
     if ::File.exists?("/etc/pki/rpm-gpg/#{new_resource.key}")
       Chef::Log.info "Removing #{new_resource.key} key from /etc/pki/rpm-gpg/"
       file "/etc/pki/rpm-gpg/#{new_resource.key}" do
         action :delete
       end
       new_resource.updated_by_last_action(true)
     end
   end

In the following example an ``unless`` statement is used to add a key, unless that node object already has that key assigned to it:

.. code-block:: ruby

   unless new_resource.url.nil?
     remote_file "/etc/pki/rpm-gpg/#{new_resource.key}" do
       source new_resource.url
       mode "0644"
       notifies :run, "execute[import-rpm-gpg-key-#{new_resource.key}]", :immediately
     end
   end
   
   action :add do
     unless ::File.exists?("/etc/yum.repos.d/#{new_resource.repo_name}.repo")
       Chef::Log.info "Adding #{new_resource.repo_name} repository to /etc/yum.repos.d/#{new_resource.repo_name}.repo"
       repo_config
     end
   end


Log Entries
=====================================================
Use the ``Chef::Log`` class in a lightweight provider to define log entries that are created during a |chef| run. The syntax for a log message is as follows:

.. code-block:: ruby

   Chef::Log.log_type("message")

where

* ``log_type`` can be ``.debug``, ``.info``, ``.warn``, ``.error``, or ``.fatal`` 
* ``"message"`` is the message that is logged. For example: ``"#{@new_resource} added module '#{@new_resource.module_name}'"`` or ``"#{@new_resource} module already exists - nothing to do"``

For example, from the ``repository.rb`` provider in the |cookbook yum| cookbook:

.. code-block:: ruby

   action :add do
     unless ::File.exists?("/etc/yum.repos.d/#{new_resource.repo_name}.repo")
       Chef::Log.info "Adding #{new_resource.repo_name} repository to /etc/yum.repos.d/#{new_resource.repo_name}.repo"
       repo_config
     end
   end

where the ``Chef::Log`` class appends ``.info`` as the log type. If the name of the repo was "foo", then the log message would be "Adding foo repository to /etc/yum.repos.d/foo.repo".

Another example shows two log entries, one that is triggered when a service is being restarted, and then another that is triggered after the service has been restarted:

.. code-block:: ruby

   action :restart do
     if @current_resource.running
       Chef::Log.debug "Restarting #{new_resource.service_name}"
       shell_out!(restart_command)
       new_resource.updated_by_last_action(true)
       Chef::Log.debug "Restarted #{new_resource.service_name}"
     end
   end

Use the ``rescue`` clause to make sure that a log message is always provided. For example:

.. code-block:: ruby

   def load_current_resource
     ...
     begin
       ...
     rescue
       Chef::Log.debug("Cannot find #{@new_resource} in the swarm")
     end
     ...
   end


Examples
=====================================================
The following examples show various lightweight providers that use core |chef| resources.

cron_d
-----------------------------------------------------
The ``cron_d`` lightweight provider (found in the |cookbook cron| cookbook maintained by |opscode|) is used to tell |chef| what to do whenever the ``cron_d`` lightweight resource is used in a recipe:

.. code-block:: ruby

   action :delete do
     file "/etc/cron.d/#{new_resource.name}" do
       action :delete
     end
   end
   
   action :create do
     t = template "/etc/cron.d/#{new_resource.name}" do
       cookbook new_resource.cookbook
       source "cron.d.erb"
       mode "0644"
       variables({
           :name => new_resource.name, 
           :minute => new_resource.minute,
           :hour => new_resource.hour,
           :day => new_resource.day,
           :month => new_resource.month,
           :weekday => new_resource.weekday,
           :command => new_resource.command,
           :user => new_resource.user,
           :mailto => new_resource.mailto,
           :path => new_resource.path,
           :home => new_resource.home,
           :shell => new_resource.shell
         })
       action :create
     end
     new_resource.updated_by_last_action(t.updated_by_last_action?)
   end


where:

* two ``action`` blocks are defined, one for the ``:create`` action and one for the ``:delete`` action
* the ``:delete`` action block calls the |resource file| resource (and it's ``:delete`` action) to delete a file in the ``/etc/cron.d`` folder
* the ``:create`` action block creates a new entry in the ``/etc/cron.d`` folder. 

For example, if a recipe used the ``cron_d`` lightweight resource similar to the following:

.. code-block:: ruby

   cron_d "daily-usage-report" do
     minute 0
     hour 23
     command "/srv/app/scripts/daily_report"
     user "appuser"
   end

this tells |chef| to use the ``cron_d`` lightweight provider and the credentials for a user named ``appuser`` to create a |crontab| entry named "daily-usage-report". This |crontab| entry executes a command located in the ``/srv/app/scripts/daily_report`` directory at a specified interval (defined by the ``minute`` and ``hour`` attributes). Any of the attributes that are not specified in the recipe (such as ``mailto``, ``weekday``, and ``day``) just use the default attribute values defined by the lightweight resource.

ebs_volume
-----------------------------------------------------
The ``ebs_volume.rb`` lightweight provider from the |cookbook aws| cookbook defines how |chef| would handle a recipe that uses the ``ebs_volume`` lightweight resource and the ``:detach`` action. The following ``action`` block tells |chef| what to do with the ``:detach`` action:

.. code-block:: ruby

   action :detach do
     vol = determine_volume
     return if vol[:aws_instance_id] != instance_id
     converge_by("detach volume with id: #{vol[:aws_id]}") do
       detach_volume(vol[:aws_id], new_resource.timeout)
     end
   end

and the following ``def`` block defines the ``vol`` variable called by the ``determine_volume`` method:

.. code-block:: ruby

   def determine_volume
     vol = currently_attached_volume(instance_id, new_resource.device)
     vol_id = new_resource.volume_id || volume_id_in_node_data || ( vol ? vol[:aws_id] : nil )
     raise "volume_id attribute not set ... no volume is attached at the device" unless vol_id
   
     vol = volume_by_id(vol_id)
     raise "No volume with id #{vol_id} exists" unless vol
   
     vol
   end


entry (|ssh|)
-----------------------------------------------------
The ``entry.rb`` lightweight provider (from the ``ssh_known_hosts`` cookbook) is used to add hosts and keys to the ``/etc/ssh_known_hosts`` file.

.. code-block:: ruby

   action :create do
     key = (new_resource.key || `ssh-keyscan -H #{new_resource.host} 2>&1`)
     comment = key.split("\n").first
   
     Chef::Application.fatal! "Could not resolve #{new_resource.host}" if key =~ /getaddrinfo/
   
     file node['ssh_known_hosts']['file'] do
       action        :create
       backup        false
       content       
       only_if do
         !::File.exists?(node['ssh_known_hosts']['file']) || ::File.new(node['ssh_known_hosts']['file']).readlines.length == 0
       end
     end
   
     ruby_block "add #{new_resource.host} to #{node['ssh_known_hosts']['file']}" do
       block do
         file = ::Chef::Util::FileEdit.new(node['ssh_known_hosts']['file'])
         file.insert_line_if_no_match(/#{Regexp.escape(comment)}|#{Regexp.escape(key)}/, key)
         file.write_file
       end
     end
     new_resource.updated_by_last_action(true)
   end

rabbitmq_plugin
-----------------------------------------------------
The ``rabbitmq_plugin`` lightweight provider is used to tell |chef| how to handle two actions (``:disable`` and ``:enable``) that are used to manage |rabbitmq| plugins. Using this lightweight resource in a recipe is simple:

.. code-block:: ruby

   rabbitmq_plugin "my_plugin" do
     action :enable
   end

The lightweight provider then does most of the work:

.. code-block:: ruby

   action :enable do
     unless plugin_enabled?(new_resource.plugin)
       execute "rabbitmq-plugins enable #{new_resource.plugin}" do
         Chef::Log.info "Enabling RabbitMQ plugin '#{new_resource.plugin}'."
         path plugins_bin_path(true)
         new_resource.updated_by_last_action(true)
       end
     end
   end
   
   def plugins_bin_path(return_array=false)
     path = ENV.fetch('PATH') + ':/usr/lib/rabbitmq/bin'
     return_array ? path.split(':') : path
   end
   
   def plugin_enabled?(name)
     cmdStr = "rabbitmq-plugins list -e '#{name}\\b'"
     cmd = Mixlib::ShellOut.new(cmdStr)
     cmd.environment['HOME'] = ENV.fetch('HOME', '/root')
     cmd.environment['PATH'] = plugins_bin_path
     cmd.run_command
     Chef::Log.debug "rabbitmq_plugin_enabled?: #{cmdStr}"
     Chef::Log.debug "rabbitmq_plugin_enabled?: #{cmd.stdout}"
     cmd.error!
     cmd.stdout =~ /\b#{name}\b/
   end

