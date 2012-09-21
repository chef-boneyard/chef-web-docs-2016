.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This topic compares and contrasts a full |chef| provider (named ``Chef::Resource::File``) with a lightweight provider that has the same functionality. The following code is simple, traditional |ruby| that creates a number of getter and setter methods and then validates the inputs to match criteria (regular expression, string, true or false, and so on). The ``Chef::Resource::File`` provider:

.. code-block:: ruby

   "Chef::Resource::File"
   require 'chef/resource'
    
   class Chef
     class Resource
       class File < Chef::Resource
    
         def initialize(name, collection=nil, node=nil)
           super(name, collection, node)
           @resource_name = :file
           @path = name
           @backup = 5
           @action = "create"
           @allowed_actions.push(:create, :delete, :touch, :create_if_missing)
         end
    
         def backup(arg=nil)
           set_or_return(
             :backup,
             arg,
             :kind_of => [ Integer, FalseClass ]
           )
         end
    
         def checksum(arg=nil)
           set_or_return(
             :checksum,
             arg,
             :regex => /^[a-zA-Z0-9]{64}$/
           )
         end
    
         def group(arg=nil)
           set_or_return(
             :group,
             arg,
             :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
           )
         end
    
         def mode(arg=nil)
           set_or_return(
             :mode,
             arg,
             :regex => /^0?\d{3,4}$/
           )
         end
   
         def owner(arg=nil)
           set_or_return(
             :owner,
             arg,
             :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
          )
         end
   
         def path(arg=nil)
           set_or_return(
             :path,
             arg,
             :kind_of => String
           )
         end
 
       end
     end
   end

The comparable lightweight provider looks like:

.. code-block:: ruby

   actions :create, :delete, :touch, :create_if_missing
   
   attribute :backup,   :kind_of => [ Integer, FalseClass ]
   attribute :group,    :regex => /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/
   attribute :mode,     :regex => /^0?\d{3,4}$/
   attribute :owner,    :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
   attribute :path,     :kind_of => String
   attribute :checksum, :regex => /^[a-zA-Z0-9]{64}$/
