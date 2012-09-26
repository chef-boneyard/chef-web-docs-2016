.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A lightweight resource is an abstract interface that specifies one (or more) actions that can be taken, one (or more) attributes, and then for each attribute a validation rule that defines how each attribute can be applied. The syntax for a lightweight resource is:

.. code-block:: ruby

   actions :action_name, :action_name
   
   attribute :attribute_name,   :kind_of => [ string, integer, etc. ]
   attribute :attribute_name,   :regex => regular_expression

where ``:action_name`` defines each action and ``:attribute_name`` defines each attribute. Using ``:kind_of`` will enforce a specific value type and using ``:regex`` will allow a regular expression. For example, a list of actions like:

.. code-block:: ruby

   actions :foo, :bar

specifies a list of allowed actions for a resource that includes "foo" and "bar". Typically, the names of actions correspond to methods that are available to the provider that will implement the actions. For example, an action named ``:foo`` would correspond to a method named ``action_foo``. If more than one action is listed, the additional actions will append to (and not overwrite) the list of allowed actions. **jamescott: I have no idea what the previous sentence actually means. Anyone?**

For attributes, the validation rules are optional. For example, using only the attribute keyword:

.. code-block:: ruby

   attribute :foo

will create an attribute named ``:foo`` that is accessible to the provider using the resource's ``foo`` method, but without validation. To use validation, specify the type of validation (a string or a regular expression) like this:

.. code-block:: ruby

   attribute :bar, :kind_of => String

or

.. code-block:: ruby

   attribute :bar, :regex => regular_expression

For example, a lightweight resource that has four actions and six attributes:

.. code-block:: ruby

   actions :create, :delete, :touch, :create_if_missing
   
   attribute :backup,   :kind_of => [ Integer, FalseClass ]
   attribute :group,    :regex => /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/
   attribute :mode,     :regex => /^0?\d{3,4}$/
   attribute :owner,    :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
   attribute :path,     :kind_of => String
   attribute :checksum, :regex => /^[a-zA-Z0-9]{64}$/
