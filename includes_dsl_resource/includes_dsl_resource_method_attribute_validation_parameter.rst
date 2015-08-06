.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A validation parameter is used to add zero (or more) validation parameters to an property.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Parameter
     - Description
   * - ``:callbacks``
     - Use to define a collection of unique keys and values (a |ruby hash|) for which the key is the error message and the value is a lambda to validate the parameter. For example: ``"Option #{key}'s value #{value} #{message}!"``, which will insert a key into an error message if the |ruby proc| object does not return true. For example:

       .. code-block:: ruby
       
          :callbacks => {
		    'should be a valid non-system port' => lambda { 
		      |p| p > 1024 && p < 65535 
		      }
		    }

   * - ``:default``
     - Use to specify the default value for an property. For example:

       .. code-block:: ruby
       
          :default => 'a_string_value'
       
       .. code-block:: ruby
       
          :default => 123456789
       
       .. code-block:: ruby
       
          :default => []
       
       .. code-block:: ruby
       
          :default => ()
       
       .. code-block:: ruby
       
          :default => {}
   * - ``:equal_to``
     - Use to match a value with ``==``. Use an array of values to match any of those values with ``==``. For example:
       .. code-block:: ruby

          :equal_to => [true, false]

       .. code-block:: ruby
          
          :equal_to => ['php', 'perl']

   * - ``:kind_of``
     - Use to ensure a value is of a particular |ruby| class, such as ``TrueClass``, ``FalseClass``, ``NilClass``, ``String``, ``Array``, ``Hash``, and so on. Use an array of |ruby| classes to allow a value to be of more than one type. For example: ``:kind_of => String``, ``:kind_of => Array``, ``:kind_of => [TrueClass, FalseClass]`` and ``:kind_of => [Array, Hash]``. For example:

       .. code-block:: ruby
       
          :kind_of => String
       
       .. code-block:: ruby
       
          :kind_of => Fixnum
       
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
       
          :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
   * - ``:required``
     - Indicates that an property is required. For example:

       .. code-block:: ruby
       
          :required => true
   * - ``:respond_to``
     - Use to ensure that a value has a given method. This can be a single method name or an array of method names. For example:

       .. code-block:: ruby
       
          :respond_to => valid_encoding?

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
