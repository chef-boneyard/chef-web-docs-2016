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

Every resource has its own set of actions and attribute. Most attributes have default values. Some attributes are available to all resources, for example some attributes are used to send notifications to other resources, whereas others are used to set up conditional execution rules. 

All actions have a default value. Only non-default behaviors of actions and attributes need to be specified. For example, the |resource package| resource's default action is to install and the name of the package defaults to the ``"name"`` of the resource, therefore it is possible to write a resource block like this:

.. code-block:: ruby

   package "tar"

and the |chef client| will use the default action (``:install``) to install the ``tar`` package.

.. note:: The attribute keyword associated with resources in the LWRP DSL is not the same as the 'attributes' that make up node objects
