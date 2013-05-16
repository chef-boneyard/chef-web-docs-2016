=====================================================
Custom LWRPs
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_lwrp/includes_lwrp.rst

.. SOME NOTES ... MAYBE INTEGRATE, MAYBE KEEP SEPARATE, MAYBE MAYBE

* LWRPs are used to abstract a repeated pattern of behavior on the system using a declarative interface that doesn't already exist in Chef.
* LWRPs have two components: a resource and a provider.
* For LWRPs, both the resource and provider must be in the same cookbook, in the ``/resources`` and ``/providers`` directory of cookbooks, respectively.
* A lightweight resource describes the action(s) that Chef may take against an object in the system.

.. SEPARATE _INCLUDE BELOW; THIS ONE IS ABOUT THE COOKBOOK DIRECTORIES THAT HOLD THE LWRP COMPONENTS

A LWRP is defined in a cookbook in the following cookbook subdirectories:

* The ``/resources`` directory contains a |ruby| file for each lightweight resource
* The ``/providers`` directory contains a |ruby| file for each lightweight provider

where there is typically a 1:1 ratio of lightweight resource files to lightweight provider files, with both the lightweight resource and lightweight provider having the same file name. For example: a resource named ``open_file.rb`` and a provider named ``open_file.rb``.

.. END SEPARATE _INCLUDE ABOVE

This topic will walk through the structure, syntax, and options available to lightweight resources and lightweight providers.


Lightweight Resources
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

Syntax
-----------------------------------------------------
The syntax for a lightweight resource is as follows:

.. code-block:: ruby

   require 'required_item'

   actions :action_name1, :action_name2, :action_name...
   default_action :action_name1
   
   attribute :attribute_name :kind_of => value, :name_attribute => true
   attribute :attribute_name :kind_of => value, :validation_parameter => value
   ...
   attribute :attribute_name :kind_of => value, :validation_parameter => value

   attr_accessor :attribute, :attribute

   def initialize(*args)
     super
     @action = :action_name
   end

where 

* ``require`` lists any external entities that may be required by the lightweight resources, such as a library; a lightweight resource is |ruby| and anything that can be done in |ruby| can be done in a lightweight resource
* ``:action_name1``, ``:action_name2``, and ``:action_name...`` represents a comma-delimited list of ``actions`` that are available to this lightweight resource; there must be at least one action
* ``action_name1`` is set to be the ``default_action``
* ``:attribute_name`` is the name of the attribute; a lightweight resource may define as many attributes as necessary
* ``:kind_of => value`` specifies the |ruby| class (or an array of |ruby| classes) that are used to define this attribute's value
* ``:name_attribute`` is associated with one ``attribute`` to indicate which attribute's value will be defined by the name of the resource as it is defined in the recipe (i.e. the string that appears in front of the ``do`` block in the recipe and after the resource: ``resource_name "name_attribute" do``)
* ``:validation_parameter`` represents a comma-delimited list of validation parameters for each attribute
* ``attr_accessor`` allows the lightweight resource to use the ``Module`` |ruby| class to check for one (or more) named attributes, such as ``:exists`` or ``:running``
* the ``def initialize(*args)`` block defines the default attribute in ``@action = :action_name``

For example, the ``cron_d`` lightweight resource (found in the |cookbook cron| cookbook maintained by |opscode|) can be used to manage files located in ``/etc/cron.d``:

.. code-block:: ruby

   actions :create, :delete
   
   attribute :name, :kind_of => String, :name_attribute => true
   attribute :cookbook, :kind_of => String, :default => "cron"
   attribute :minute, :kind_of => [Integer, String], :default => "*"
   attribute :hour, :kind_of => [Integer, String], :default => "*"
   attribute :day, :kind_of => [Integer, String], :default => "*"
   attribute :month, :kind_of => [Integer, String], :default => "*"
   attribute :weekday, :kind_of => [Integer, String], :default => "*"
   attribute :command, :kind_of => String, :required => true
   attribute :user, :kind_of => String, :default => "root"
   attribute :mailto, :kind_of => [String, NilClass]
   attribute :path, :kind_of => [String, NilClass]
   attribute :home, :kind_of => [String, NilClass]
   attribute :shell, :kind_of => [String, NilClass]
   
   def initialize(*args)
     super
     @action = :create
   end
   
   def block_name
     # other def blocks, as needed
   end

where

* the ``actions`` allow a recipe to manage entries in a |crontab| file (create entry, delete entry)
* ``:minute``, ``:hour``, ``:day``, ``:month``, and ``:weekday`` are the collection of attributes used to schedule a |cron| job, assigned a default value of ``"*"``
* ``:command`` is the command that will be run (and also required)
* ``:user`` is the user by which the command is run
* ``:mailto``, ``:path``, ``:home``, and ``:shell`` are optional environment variables that do not have default value, which each being defined as an array that supports the ``String`` and ``NilClass`` |ruby| classes
* the ``def initialize(*args)`` block sets ``:create`` to be the default action
* the ``def block_name`` block represents the rest of the lightweight resource, should additional code blocks be required

Resource DSL
-----------------------------------------------------
The Resource DSL is a Ruby DSL that is used to define a lightweight resource. The Resource DSL also helps ensure that lightweight resources provide its corresponding lightweight provider the correct information. The Resource DSL is a small DSL with just two methods and at least one ``def`` block (to set the default action). Because the Resource DSL is a Ruby DSL, then anything that can be done using Ruby can also be done as part of defining a lightweight resource.

action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``action`` method is used to define a list of actions that are available to be used in a recipe. Each action must have a corresponding section in a lightweight provider that tells |chef| what to do when this action is specified in a recipe. The syntax for the ``action`` method is as follows:

.. code-block:: ruby

   actions :action_name, :action_name

where ``actions`` is a comma-delimited list of individual actions.

attribute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``attribute`` method is used to define a list of attributes and any of those attribute's associated validation parameters. The syntax for the ``attribute`` method is as follows:

.. code-block:: ruby

   attribute :attribute_name :validation_parameter => value, :validation_parameter => value

where ``attribute`` must have an attribute name and zero (or more) validation parameters.

Validation Parameters
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A validation parameter is used to add zero or more validation parameters to an attribute.

.. warning:: REMOVE ME: The list of valid ruby classes (in the sidebar): http://ruby-doc.org/core-1.9.3/TrueClass.html

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Parameter
     - Description
   * - ``:callbacks``
     - Use to define a collection of unique keys and values (a Hash) that should return true. For example: ``"Option #{key}'s value #{value} #{message}!"``, which will insert a key into an error message if the Proc does not return true.
   * - ``:default``
     - Use to specify the default value for an attribute.
   * - ``:equal_to``
     - Use to match a value with ``==``. Use an array of values to match any of those values with ``==``. For example: ``:equal_to => [:true, :false]`` or ``:equal_to => [:value_one, :value_two]``.
   * - ``:kind_of``
     - Use to ensure a value is of a particular |ruby| class, such as ``TrueClass``, ``FalseClass``, ``NilClass``, ``String``, ``Array``, ``Hash``, and so on. Use an array of |ruby| classes to allow a value to be of more than one type. For example: ``:kind_of => String``, ``:kind_of => Array``, ``:kind_of => [TrueClass, FalseClass]`` and ``:kind_of => [Array, Hash]``.
   * - ``:name_attribute``
     - Use to set the default name of a lightweight resource. If the name isn't specified in the recipe, this is the value that will be used.
   * - ``:regex``
     - Use to match a value to a regular expression.
   * - ``:required``
     - Indicates that an attribute is required.
   * - ``:respond_to``
     - Use to ensure that a value has a given method. This can be a single method name or an array of method names.

Chef::Resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A lightweight resource can leverage a core |chef| resource. xxxxx.

For example:

.. code-block:: ruby

   example_goes_here

Examples
-----------------------------------------------------
xxxxx

xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx


:callbacks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
An example of using the ``:callbacks`` validation parameter from the |cookbook gunicorn| cookbook (formatted for better readability):

.. code-block:: ruby

   attribute :server_hooks, :kind_of => Hash, :default => {}, \
     :callbacks =>
       {"should contain a valid gunicorn server hook name" => lambda 
           { 
             |hooks| Chef::Resource::GunicornConfig.validate_server_hook_hash_keys(hooks)
           }
         }
   ...

   VALID_SERVER_HOOK_NAMES = 
     [
       :on_starting, 
       :on_reload, 
       :when_ready, 
       :pre_fork, 
       :post_fork,
       :pre_exec, 
       :pre_request, 
       :post_request, 
       :worker_exit
     ]
   
   private
     def self.validate_server_hook_hash_keys(server_hooks)
       server_hooks.keys.reject{|key| VALID_SERVER_HOOK_NAMES.include?(key.to_sym)}.empty?
     end

where

* the ``:server_hooks`` attribute requires the value to be a valid |gunicorn| server hook name
* the ``VALID_SERVER_HOOK_NAMES`` array defines the list of valid server hooks
* the ``private def`` block ensures the ``:callback`` validation parameter has the list of valid server hooks


Lightweight Providers
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

A lightweight provider is always authored using |ruby|; anything that can be done using |ruby| can also be done in a lightweight provider. In addition to |ruby|, the Provider DSL provides additional methods that are specific to |chef|.

Syntax
-----------------------------------------------------
This section shows some of the more common elements that appear in lightweight providers, including lightweight provider-specific methods, but also some basic |ruby| elements too. Know that many lightweight providers do not contain as much code as this syntax example does. Remember:

* The structure of a lightweight provider can vary, depending on what a lightweight provider is being asked to do
* At its core, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider
* A lightweight provider tells |chef| how to handle the actions that are defined by a lightweight resource
* The complexity of the lightweight provider simply depends on what the lightweight provider needs to do; if a lightweight provider feels too complex, try breaking it down into smaller tasks (and creating more)

The syntax for a lightweight provider is as follows:

.. code-block:: ruby

   require

   include Include::Class::Here

   def whyrun_supported?
     true                  # or false
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
* ``current_resource`` is xxxxx
* ``inline_compile_mode`` is xxxxx
* ``load_current_resource`` is xxxxx
* ``new_resource`` is xxxxx
* ``updated_by_last_action`` is xxxxx

Provider DSL
-----------------------------------------------------
The Provider DSL is a Ruby DSL that is used to define a lightweight provider. The Provider DSL also helps ensure that a lightweight provider takes the correct actions when its corresponding lightweight resource is used in a recipe. The Provider DSL is a small DSL with just a single method, but with xxxxx **COMPLEXITY???**. Because the Provider DSL is a Ruby DSL, then anything that can be done using Ruby can also be done as part of defining a lightweight provider.

action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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
* ``@current_resource.exists`` checks to see if the object already exists
* If the object does not already exist, ``# the action`` is |ruby| code that tells |chef| what to do
* ``converge_by`` tells |chef| which log entry to use when |chef| is run in |whyrun| mode

converge_by
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``converge_by`` method is used to define the strings that are logged when |chef| is run in |whyrun| mode. The ``converge_by`` method is wrapped around the code that runs when |chef| is not run in |whyrun| mode. 

.. warning:: This method replaces the functionality of ``updated_by_last_action``. |chef| is compatible with both the older method (``updated_by_last_action``) and the newer method (``converge_by``), but it is recommended that when a lightweight provider is built (or updated) to include the ``whyrun_supported?`` method, then ``converge_by`` is the recommended approach for creating the messages that are logged by |chef| when it is run in |whyrun| mode.

The syntax for the ``converge_by`` method is as follows:

.. code-block:: ruby

   converge_by("what_happens_in_why-run_mode") do
     # some Ruby code
     else
       Chef::Log.log_type "log_entry"
   end

where ``"what_happens_in_why-run_mode"`` is something like:

* ``"Add #{ @new_resource.attribute }"``
* ``"Delete #{ @new_resource.attribute }"``
* A local variable that was set earlier in the code block

and then when |chef| is not run in |whyrun| mode:

* ``# some Ruby code`` is what happens when |chef| isn't run in |whyrun| mode
* ``Chef::Log.log_type "log_entry"`` is the log entry

For example, from the ``module.rb`` provider in the |cookbook iis| cookbook:

.. code-block:: ruby

   action :delete do
     if @current_resource.exists
       converge_by("delete IIS module #{@new_resource.module_name}") do
         cmd = "#{appcmd} delete module /module.name:\"#{@new_resource.module_name}\""
         if @new_resource.application
           cmd << " /app.name:\"#{@new_resource.application}\""
         end
         shell_out!(cmd, {:returns => [0,42]})
       end
       Chef::Log.info("#{@new_resource} deleted")
     else
       Chef::Log.debug("#{@new_resource} module does not exist - nothing to do")
     end
   end

where:

* the string defined by the ``converge_by`` method is reported when |chef| is run in |whyrun| mode
* or a delete ``cmd`` is executed (but only if that resource exists)
* an appropriate log entry is entered, based on whether or not something was deleted

current_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``current_resource`` method is used to return the value of a current resource. The syntax for the ``current_resource`` method is as follows:

.. code-block:: ruby

   xxxxx

where ``xxxxx`` is xxxxx.

inline_compile_mode
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``inline_compile_mode`` method is used to xxxxx. The syntax for the ``inline_compile_mode`` method is as follows:

.. code-block:: ruby

   xxxxx

where ``xxxxx`` is xxxxx.

http://chef-docs.s3-website-us-east-1.amazonaws.com/lwrp_common_inline_compile.html

load_current_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``load_current_resource`` method is used to xxxxx. 

The syntax for the ``load_current_resource`` method is as follows:

.. code-block:: ruby

   xxxxx

where ``xxxxx`` is xxxxx.

new_resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``new_resource`` method is used to return the value of a new resource. The syntax for the ``new_resource`` method is as follows:

.. code-block:: ruby

   xxxxx

where ``xxxxx`` is xxxxx.

For example, from the ``resource_tag.rb`` lightweight provider in the |cookbook aws| cookbook:

.. code-block:: ruby

   action :remove do
     unless @new_resource.resource_id
       resource_id = @new_resource.name
     else
       resource_id = @new_resource.resource_id
     end
   
     tags_to_delete = @new_resource.tags.keys
   
     tags_to_delete.each do |key|
       if @current_resource.tags.keys.include?(key) and @current_resource.tags[key] == @new_resource.tags[key]
         converge_by("delete tag '#{key}' on resource #{resource_id} with value '#{@current_resource.tags[key]}'") do
           ec2.delete_tags(resource_id, {key => @new_resource.tags[key]})
           Chef::Log.info("AWS: Deleted tag '#{key}' on resource #{resource_id} with value '#{@current_resource.tags[key]}'")
         end
       end
     end
   end

where:

* ``xxxxx`` is xxxxx
* ``xxxxx`` is xxxxx

updated_by_last_action
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``updated_by_last_action`` method was used in versions of |chef| prior to |chef 11| to xxxxx. |chef 11| supports using this method, but if |chef| is to be run in |whyrun| mode, it is recommended that all occurrences of ``updated_by_last_action`` be updated to move the related code into a ``converge_by`` block.

The following example shows how the ``updated_by_last_action`` method is used in a lightweight provider:

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

and the following example shows the same code, but using the ``converge_by`` method to trigger messages that are used by |chef| when it is run in |whyrun| mode:

.. code-block:: ruby

   action :create do
     converge_by("Added #{ @new_resource.name }") do
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
     end

whyrun_supported?
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|whyrun| mode is a way to see what |chef| would have configured, had an actual |chef| run occurred. This approach is similar to the concept of "no-operation" (or "no-op"): decide what should be done, but then don't actually do anything until it's done right. This approach to configuration management can help identify where complexity exists in the system, where inter-dependencies may be located, and to verify that everything will be configured in the desired manner.

When |whyrun| mode is enabled, a |chef| run will occur that does everything up to the point at which configuration would normally occur. This includes getting the configuration data, authenticating to the |chef server|, rebuilding the node object, expanding the run list, getting the necessary cookbook files, resetting node attributes, identifying the resources, and building the resource collection and does not include mapping each resource to a provider or configuring any part of the system.

.. note:: why-run mode is not a replacement for running cookbooks in a test environment that mirrors the production environment. |opscode| uses why-run mode to learn more about what is going on, but also test-kitchen on developer systems, along with an internal |openstack| cloud and external cloud providers to test more thoroughly.

.. END_INCLUDE

The ``whyrun_supported?`` method is used to tell |chef| that a lightweight provider supports |whyrun| mode. The syntax for the ``whyrun_supported?`` method is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

where ``whyrun_supported?`` is set to ``true`` for any lightweight provider that supports using |whyrun| mode. When |whyrun| mode is supported by the a lightweight provider, the ``converge_by`` method is used to define the strings that are logged by |chef| when it is run in |whyrun| mode.

Chef::Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use ``Chef::Providers`` class in a lightweight provider to xxxxx. The syntax is as follows:

.. code-block:: ruby

   Chef::Providers.provider_name

where:

* ``xxxxx`` is xxxxx
* ``xxxxx`` is xxxxx

Chef::Log
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use ``Chef::Log`` class in a lightweight provider to define log entries to be created at specific points during the processing of a resource during a |chef| run. The syntax for a log message is as follows:

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

Use Ruby
-----------------------------------------------------
All providers are built using |ruby| code. In addition to using the |chef| Provider DSL, anything that can be done in |ruby| can also be done in a lightweight provider.

Condition Statements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A lightweight provider can use any conditional statement that can be used in |ruby|: ``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, and ``for``.

Relative Paths
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx

http://chef-docs.s3-website-us-east-1.amazonaws.com/essentials_cookbook_lwrp_resources_common_relative_paths.html

Ruby Classes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|ruby| classes can be used in lightweight providers (because lightweight providers are built with |ruby| and can do anything |ruby| can do).

For example:

.. code-block:: ruby

   action :remove do
     if ::File.exists?("/etc/yum.repos.d/#{new_resource.repo_name}.repo")
       # some Ruby code
     end
   end

where ``::File.exists?`` is using the ``File`` |ruby| class to determine if a named file is located at ``/etc/yum.repos.d/``. If the file exists, then |chef| will remove it. Or:

.. code-block:: ruby

   action :update do
     repos ||= {}
     # If the repo is already enabled/disabled as per the resource, we don't want to converge the template resource.
     if ::File.exists?("/etc/yum.repos.d/#{new_resource.repo_name}.repo")
       ::File.open("/etc/yum.repos.d/#{new_resource.repo_name}.repo") do |file|
         repo_name ||= nil
         file.each_line do |line|
           case line
           when /^\[(\S+)\]/
             repo_name = $1
             repos[repo_name] ||= {}
           when /^(\S+?)=(.*)$/
             param, value = $1, $2
             repos[repo_name][param] = value
           else
           end
         end
       end
     else

where the ``::File`` class is used to first see if the file exists, and then open that file so that it can be updated.

Examples
-----------------------------------------------------
xxxxx

cron_d
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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
* the ``:create`` action block creates a new entry in the ``/etc/cron.d`` folder. For example, if a recipe used the ``cron_d`` lightweight resource similar to the following:

  .. code-block:: ruby

      cron_d "daily-usage-report" do
        minute 0
        hour 23
        command "/srv/app/scripts/daily_report"
        user "appuser"
      end

   this tells |chef| to use the ``cron_d`` lightweight provider and the credentials for a user named ``appuser`` to create a |crontab| entry named "daily-usage-report". This |crontab| entry executes a command located in the ``/srv/app/scripts/daily_report`` directory at a specified interval (defined by the ``minute`` and ``hour`` attributes). Any of the attributes that are not specified in the recipe (such as ``mailto``, ``weekday``, and ``day``) just use the default attribute values defined by the lightweight resource.


ebs_volume
+++++++++++++++++++++++++++++++++++++++++++++++++++++
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


xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx

converge_by with variable
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example shows how to use a variable to define the log entry that is used when |chef| is run in |whyrun| mode:

.. code-block:: ruby

   if condition
     description = "install package #{new_resource} version #{install_version}"
     converge_by(description) do
       # some Ruby code
     end
   end

where the following example would provide the same functionality, but without using variable:

.. code-block:: ruby

   if condition
     converge_by("install package #{new_resource} version #{install_version}") do
       # some Ruby code
     end
   end










Notes (to be deleted)
=====================================================
A list of syntax / examples of validation parameters:

.. code-block:: ruby

   :callbacks => {callback}

.. code-block:: ruby

   :default => {}

.. code-block:: ruby

   :default => "a_string_value"

.. code-block:: ruby

   :default => 123456789

.. code-block:: ruby

   :default => []

.. code-block:: ruby

   :default => ()

.. code-block:: ruby

   :equal_to

.. code-block:: ruby

   :kind_of => String

.. code-block:: ruby

   :kind_of => Integer

.. code-block:: ruby

   :kind_of => Hash

.. code-block:: ruby

   :kind_of => [TrueClass, FalseClass]

.. code-block:: ruby

   :kind_of => [String, NilClass]

.. code-block:: ruby

   :kind_of => [Class, String, Symbol]

.. code-block:: ruby

   :kind_of => [Array, Hash]

.. code-block:: ruby

   :name_attribute => true

.. code-block:: ruby

   :regex => /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/

.. code-block:: ruby

   :required

.. code-block:: ruby

   :respond_to 

.. code-block:: ruby

   :kind_of => String, :name_attribute => true

.. code-block:: ruby

   :kind_of => String, :default => 'a_string_value'

.. code-block:: ruby

   :kind_of => Integer, :default => integer

.. code-block:: ruby

   :kind_of => [TrueClass, FalseClass], :default => true

.. code-block:: ruby

   :kind_of => [TrueClass, FalseClass], :default => false

.. code-block:: ruby

   :kind_of => [String, NilClass], :default => nil

.. code-block:: ruby

   :kind_of => [String, NilClass], :default => a_string

.. code-block:: ruby

   :kind_of => [Class, String, Symbol]

.. code-block:: ruby

   :kind_of => [Array, Hash], :default => []

.. code-block:: ruby

   :kind_of => Array, :default => []

.. code-block:: ruby

   :kind_of => Hash, :default => {}, :callbacks => {callback}

.. code-block:: ruby

   :kind_of => Hash, :default => {}

.. code-block:: ruby

   :kind_of => Symbol, :default => :value_one, :equal_to => [:value_one, :value_two]

.. code-block:: ruby

   :kind_of => Symbol, :default => :true, :equal_to => [:true, :false]


Example LWRPs
=====================================================
xxxxx

yum_repository
-----------------------------------------------------
xxxxx

bluepill_service
-----------------------------------------------------
xxxxx

samba_user
-----------------------------------------------------
xxxxx

gunicorn_config
-----------------------------------------------------
xxxxx

crib
-----------------------------------------------------
xxxxx


More Reading
=====================================================

Doug Ireton's blog has a nice series on LWRPs:

* Part 1: http://dougireton.com/blog/2012/12/31/creating-an-lwrp/
* Part 2: http://dougireton.com/blog/2013/01/07/creating-an-lwrp-part-2/
* Part 3: http://dougireton.com/blog/2013/01/13/creating-an-lwrp-part-3/