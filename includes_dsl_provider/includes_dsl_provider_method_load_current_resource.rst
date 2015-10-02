.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``load_current_resource`` method is used to construct the curent state of the resource on the node.  This is in contrast to the ``new_resource`` which is the desired state of the resource on the node.  Some of the identity properties between the new_resource and the current_resource will be identical and in construction those properties should be copied.  The other properties will reflect the existing running state of the node and should be loaded from the node's state (reading the file modes, checking for existence, etc).


For example:

.. code-block:: ruby
   def load_current_resource
     # create a current_resource with the same name as the new_resource
     @current_resource = Chef::Resource::MyResource.new(new_resource.name)
     # Some other current_resource properties may match the new_resource (e.g. For a package resource
     # the 'package_name' in the current_resource will be the same one the user requested in the
     # new_resource, file paths will be the same in both resources, etc)
     current_resource.path(new_resource.path)
     # Most other current_resource properites will be found by inspecting the system (e.g. Wwhat is
     # the current version of the installed package?  What are the existing file modes?)
     current_resource.mode(File.stat(new_resource.path).mode)
     # load_current_resource should return the current_resource by convention
     current_resource
   end

The ``load_current_resource`` method should return the current_resource it has constructed by convention, but the method is also responsible for building the instance variable directly.

The custom provider should use the current_resource in order to compare to the new_resource to check for idempotency.

Declaring a ``load_current_resource`` is optional.  Its use may be omitted, but reporting information will be incorrect, and some frameworks like minitest-chef-handler will not work, and the ``Chef::Resource#current_value`` API will not function correctly against the resource.
