.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A resource is a |ruby| block with four components: a type, a name, one (or more) attributes (with values), and one (or more) actions. The syntax for a resource is like this:

.. code-block:: ruby

   type "name" do
      attribute "value"
      action :type_of_action
   end

For example, a resource that is used to install a |tar gz| package for version 1.16.1 may look something like this:

.. code-block:: ruby

   package "tar" do
     version "1.16.1-1"
     action :install
   end

Every resource in |chef| has its own set of actions and attributes. Many attributes have default values. Some attributes are available to all resources; these are sometimes referred to as "meta" attributes and they are commonly used to send notifications to other resources or to set up conditional execution rules. All actions have a default value. Only non-default behaviors of actions and attributes need to be specified.

.. note:: Attributes associated with resources are not the same as attributes associated with nodes.