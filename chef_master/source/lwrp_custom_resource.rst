=====================================================
Custom Lightweight Resources
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

A lightweight resource is a custom resource that defines an action to be completed, which are then processed by a lightweight provider during the |chef| run. A lightweight provider and lightweight resource work together, each being defined in the same cookbook (the ``/providers`` and ``/resources`` subdirectories, respectively); together, they are referred as a LWRP (or "lightweight resource provider"). A lightweight resource is always authored using |ruby|. Anything that can be done using |ruby| can be done in a lightweight resource. In addition to using |ruby|, the |dsl resource| provides additional methods that are specific to |chef|.

Syntax
=====================================================
The syntax for a lightweight resource is as follows:

.. code-block:: ruby

   require 'required_item'

   actions :action_name1, :action_name2, :action_name...
   default_action :action_name1
   
   attribute :attribute_name, :kind_of => value, :name_attribute => true
   attribute :attribute_name, :kind_of => value, :validation_parameter => value
   ...
   attribute :attribute_name, :kind_of => value, :validation_parameter => value

   attr_accessor :attribute, :attribute

where 

* ``require`` lists any external entities that may be required by the lightweight resources, such as a library; a lightweight resource is |ruby| and anything that can be done in |ruby| can be done in a lightweight resource
* ``:action_name1``, ``:action_name2``, and ``:action_name...`` represents a comma-delimited list of ``actions`` that are available to this lightweight resource; there must be at least one action
* ``action_name1`` is set to be the ``default_action``
* ``:attribute_name`` is the name of the attribute; a lightweight resource may define as many attributes as necessary
* ``:kind_of => value`` specifies the |ruby| class (or an array of |ruby| classes) that are used to define this attribute's value
* ``:name_attribute`` is associated with one ``attribute`` to indicate which attribute's value will be defined by the name of the resource as it is defined in the recipe (i.e. the string that appears in front of the ``do`` block in the recipe and after the resource: ``resource_name "name_attribute" do``)
* ``:validation_parameter`` represents a comma-delimited list of validation parameters for each attribute
* ``attr_accessor`` allows the lightweight resource to use the ``Module`` |ruby| class to check for one (or more) named attributes, such as ``:exists`` or ``:running``

For example, the ``cron_d`` lightweight resource (found in the |cookbook cron| cookbook maintained by |opscode|) can be used to manage files located in ``/etc/cron.d``:

.. code-block:: ruby

   actions :create, :delete
   default_action :create

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
   
   def block_name
     # other def blocks, as needed
   end

where

* the ``actions`` allow a recipe to manage entries in a |crontab| file (create entry, delete entry)
* ``:create`` is the default action
* ``:minute``, ``:hour``, ``:day``, ``:month``, and ``:weekday`` are the collection of attributes used to schedule a |cron| job, assigned a default value of ``"*"``
* ``:command`` is the command that will be run (and also required)
* ``:user`` is the user by which the command is run
* ``:mailto``, ``:path``, ``:home``, and ``:shell`` are optional environment variables that do not have default value, which each being defined as an array that supports the ``String`` and ``NilClass`` |ruby| classes
* the ``def block_name`` block represents the rest of the lightweight resource, should additional code blocks be required

|dsl resource| Methods
=====================================================
The |dsl resource| is a |ruby| DSL that is used to help define a lightweight resource and to ensure that a lightweight resource provides the correct information to a lightweight provider. The |dsl resource| is a small DSL with just three methods. Because the |dsl resource| is a Ruby DSL, anything that can be done using Ruby can also be done as part of defining a lightweight resource.

action
-----------------------------------------------------
The ``action`` method is used to define a list of actions that are available to be used in a recipe. Each action must have a corresponding section in a lightweight provider that tells |chef| what to do when this action is specified in a recipe. The syntax for the ``action`` method is as follows:

.. code-block:: ruby

   actions :action_name, :action_name

where ``actions`` is a comma-delimited list of individual actions.

attribute
-----------------------------------------------------
The ``attribute`` method is used to define a list of attributes and any of those attribute's associated validation parameters. The syntax for the ``attribute`` method is as follows:

.. code-block:: ruby

   attribute :attribute_name :validation_parameter => value, :validation_parameter => value

where ``attribute`` must have an attribute name and zero (or more) validation parameters.

attr_accessor
-----------------------------------------------------
The ``attr_accessor`` method is used to define custom attributes for a lightweight resource that can be accessed by a lightweight provider. The syntax for the ``attr_accessor`` method is as follows:

.. code-block:: ruby

   attr_accessor :accessor_name, :accessor_name

where ``accessor_name`` is a comma-delimited list of custom attributes.

default_action
-----------------------------------------------------
The ``default_action`` method is used to set the default action for a lightweight resource. The syntax for the ``default_action`` method is as follows:

.. code-block:: ruby

   default_action :action_name

where ``action_name`` is the default action.

Validation Parameters
-----------------------------------------------------
A validation parameter is used to add zero or more validation parameters to an attribute.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Parameter
     - Description
   * - ``:callbacks``
     - Use to define a collection of unique keys and values (a Hash) that should return true. For example: ``"Option #{key}'s value #{value} #{message}!"``, which will insert a key into an error message if the Proc does not return true. For example:

       .. code-block:: ruby
       
          :callbacks => {callback}
   * - ``:default``
     - Use to specify the default value for an attribute. For example:

       .. code-block:: ruby
       
          :default => "a_string_value"
       
       .. code-block:: ruby
       
          :default => 123456789
       
       .. code-block:: ruby
       
          :default => []
       
       .. code-block:: ruby
       
          :default => ()
       
       .. code-block:: ruby
       
          :default => {}
   * - ``:equal_to``
     - Use to match a value with ``==``. Use an array of values to match any of those values with ``==``. For example: ``:equal_to => [:true, :false]`` or ``:equal_to => [:value_one, :value_two]``. For example:

       .. code-block:: ruby
       
          :equal_to => :true
   * - ``:kind_of``
     - Use to ensure a value is of a particular |ruby| class, such as ``TrueClass``, ``FalseClass``, ``NilClass``, ``String``, ``Array``, ``Hash``, and so on. Use an array of |ruby| classes to allow a value to be of more than one type. For example: ``:kind_of => String``, ``:kind_of => Array``, ``:kind_of => [TrueClass, FalseClass]`` and ``:kind_of => [Array, Hash]``. For example:

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
   * - ``:name_attribute``
     - Use to set the default name of a lightweight resource. If the name isn't specified in the recipe, this is the value that will be used. For example:

       .. code-block:: ruby
       
          :name_attribute => true
   * - ``:regex``
     - Use to match a value to a regular expression. For example:

       .. code-block:: ruby
       
          :regex => /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/
   * - ``:required``
     - Indicates that an attribute is required. For example:

       .. code-block:: ruby
       
          :required
   * - ``:respond_to``
     - Use to ensure that a value has a given method. This can be a single method name or an array of method names. For example:

       .. code-block:: ruby
       
          :respond_to

Some examples of combining validation parameters:

.. code-block:: ruby

   attribute :spool_name, :kind_of => String, :name_attribute => true

.. code-block:: ruby

   attribute :enabled, :equal_to => [true, false, 'true', 'false'], :default => true

From the ``nrpecheck`` lightweight resource in the |cookbook nagios| cookbook:

.. code-block:: ruby

   attribute :command_name, :kind_of => String, :name_attribute => true
   attribute :warning_condition, :kind_of => String, :default => nil
   attribute :critical_condition, :kind_of => String, :default => nil
   attribute :command, :kind_of => String
   attribute :parameters, :kind_of => String, :default => nil

From the ``policy`` lightweight resource in the |cookbook rabbitmq| cookbook:

.. code-block:: ruby

   attribute :policy, :kind_of => String, :name_attribute => true
   attribute :pattern, :kind_of => String
   attribute :params, :kind_of => Hash
   attribute :priority, :kind_of => Integer

From the ``module`` lightweight resource in the |cookbook iis| cookbook:

.. code-block:: ruby

   attribute :module_name, :kind_of => String, :name_attribute => true
   attribute :type, :kind_of => String, :default => nil
   attribute :precondition, :kind_of => String, :default => nil
   attribute :application, :kind_of => String, :default => nil


Conditional Executions
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional.rst

Conditional Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_attributes.rst

Conditional Arguements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_conditional_arguments.rst


Notifications
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_notifies.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_syntax_subscribes.rst

Timers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_notifications_timers.rst





Examples
=====================================================
The following examples show various lightweight providers that use core |chef| resources.

:callbacks
-----------------------------------------------------
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
