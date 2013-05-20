=====================================================
Custom Lightweight Providers w/Ruby
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

A lightweight provider is always authored using |ruby|; anything that can be done using |ruby| can also be done in a lightweight provider. In addition to |ruby|, the Provider DSL provides additional methods that are specific to |chef|.

Syntax
=====================================================
This section shows some of the more common elements that appear in lightweight providers, including lightweight provider-specific methods, but also some basic |ruby| elements too. Know that many lightweight providers do not contain as much code as this syntax example does. Remember:

* The structure of a lightweight provider can vary, depending on what a lightweight provider is being asked to do
* At its core, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider
* A lightweight provider tells |chef| how to handle the actions that are defined by a lightweight resource
* The complexity of the lightweight provider simply depends on what the lightweight provider needs to do; if a lightweight provider feels too complex, try breaking it down into smaller tasks (and creating more)

The syntax for a lightweight provider is as follows:

.. code-block:: ruby

   require /path/to/file

   include Include::Class::Here

   def whyrun_supported?
     true
   end

   action :action_name1 do
     # some Ruby code
     if method1
       converge_by("message") do
         # some Ruby code
       end
     else
       # some Ruby code
   end
   
   action :action_name2 do
     if @current_resource.exists
       converge_by("message") do
         # some Ruby code
       end
     end

   action :action_name... do
     # some Ruby code
     converge_by("message") do
       if method2
       # some Ruby code
       end
     end
   end

   ...

   def method1?
     # some Ruby code
   end

   def method2?
     # some Ruby code
   end

   current_resource               # THIS HAS TO BE IN THE SYNTAX BLOCK; FIGURE OUT WHERE THE PROPER PLACE IS
   inline_compile_mode            # THIS HAS TO BE IN THE SYNTAX BLOCK; FIGURE OUT WHERE THE PROPER PLACE IS
   load_current_resource          # THIS HAS TO BE IN THE SYNTAX BLOCK; FIGURE OUT WHERE THE PROPER PLACE IS
   new_resource                   # THIS HAS TO BE IN THE SYNTAX BLOCK; FIGURE OUT WHERE THE PROPER PLACE IS
   updated_by_last_action         # THIS HAS TO BE IN THE SYNTAX BLOCK; FIGURE OUT WHERE THE PROPER PLACE IS

where:

* ``require`` is a standard |ruby| method that allows a lightweight provider to require modules that are not located in the current cookbook, such as a file located in the ``chef/mixin`` directory
* ``include`` is a standard |ruby| method that allows a lightweight provider to include a class, such as ``Chef::Mixin::ShellOut`` or ``Windows::Helper``
* ``whyrun_supported?`` indicates that a provider supports running a resource in |whyrun| mode
* ``action :action_name``` is a |ruby| code block that tells |chef| what to do when the "action_name1" lightweight resource is used in a recipe
* there is generally a ``def`` block for each ``action`` block (or at least one ``def`` block that corresponds to each method called by an ``action`` block); this will vary from lightweight provider to lightweight provider
* ``converge_by()`` tells |chef| what do if this resource is run in |whyrun| mode and the ``"message"`` that |chef| will log
* ``current_resource`` is an instance variable used to represent what is on the node
* ``inline_compile_mode`` is xxxxx
* ``load_current_resource`` is xxxxx
* ``new_resource`` is xxxxx
* ``updated_by_last_action`` is xxxxx




where:

* ``whyrun_supported?`` is used to tell |chef| if the lightweight provider supports running in |whyrun| mode
* ``use_inline_resources`` is used to tell |chef| to execute any ``action`` blocks as part of a self-contained |chef| run, which ensures that |chef| can notify the parent lightweight resource after the embedded resources have finished processing
* ``action`` is the code block that tells |chef| what to do when the ``:action_name`` is used in a recipe
* ``condition`` is a |ruby| condition statement (``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, or ``for``)
* ``test`` is used to test for idempotency; ``test`` can be defined inline within the ``action`` block, defined as a method using a ``def`` block lightweight provider, or defined using any other pattern that is available in |ruby|
* ``resource`` is a |chef| resource written as a recipe
* ``Chef::Log.log_type`` is used to tell |chef| to create a log entry of one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``
* ``updated_by_last_action`` is used to notify a lightweight resource that a node was updated successfully


Use the Provider DSL
=====================================================
The Provider DSL is a Ruby DSL that is used to define a lightweight provider. The Provider DSL also helps ensure that a lightweight provider takes the correct actions when its corresponding lightweight resource is used in a recipe. The Provider DSL is a small DSL with just a few methods that are specific to |chef|. Because the Provider DSL is a Ruby DSL, then anything that can be done using Ruby can also be done as part of defining a lightweight provider.

action
-----------------------------------------------------
The ``action`` method is used to define the steps that will be taken for each of the possible actions defined by the lightweight resource. Each action must be defined separately, but within the same lightweight provider Ruby file. The syntax for the ``action`` method is as follows:

.. code-block:: ruby

   action :action_name do
     if @current_resource.exists
       Chef::Log.info "#{ @new_resource } already exists - nothing to do."
     else
       converge_by("Create #{ new_resource }") do
         # the action
       end
     end
   end

where:

* ``:action_name`` corresponds to an action defined in a lightweight resource
* ``@current_resource.exists`` is an instance variable that is used to check if the object already exists; this is an example of a test for idempotency
* If the object does not already exist, ``# the action`` is |ruby| code that tells |chef| what to do
* ``converge_by`` tells |chef| which log entry to use when |chef| is run in |whyrun| mode

resource
-----------------------------------------------------
A resource is created during the |chef| run as |chef| processes all of the recipes in the run-list. All resources are processed in a specific order. There are resources that are created by |chef| as part of the |chef| run (new resources). These resources are then compared to the resources that exist on the node itself (current resources). Depending on the conditions defined within the recipe and a comparison of the new and current resources, |chef| then determines which actions to take (including not taking any action at all).

|chef| uses the following methods to handle resources:

* ``new_resource``
* ``current_resource``
* ``load_current_resource``
* ``?????``

These methods can also be instance variables (``@``):

* ``@new_resource``
* ``@current_resource``
* ``@load_current_resource``
* ``@?????``

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


Use a Custom Library
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_provider_extend.rst

Examples
=====================================================
The following examples show various lightweight providers that rely on custom |ruby| code.

xxxxx
-----------------------------------------------------
xxxxx

xxxxx
-----------------------------------------------------
xxxxx

xxxxx
-----------------------------------------------------
xxxxx

