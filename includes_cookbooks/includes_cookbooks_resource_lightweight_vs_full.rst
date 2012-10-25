.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**jamescott: IF THIS FILE IS IN A BUILD THEN REMOVE IT. SEE includes_chef_cookbook_lightweight_compare_to_platform_resource AND DEPRECATE, RESET INCLUDES, ETC.**

The following example uses the |resource file| resource to show the difference between it and what it would look like if it were a lightweight resource.

.. code-block:: ruby

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

The above code is simple, traditional |ruby|--no magic at all. A number of getter/setter methods are created and inputs are validated against criteria, like regular expressions, strings, true/false, and so on. The lightweight resource looks like this:

.. code-block:: ruby

   actions :create, :delete, :touch, :create_if_missing
   
   attribute :backup,   :kind_of => [ Integer, FalseClass ]
   attribute :group,    :regex => /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/
   attribute :mode,     :regex => /^0?\d{3,4}$/
   attribute :owner,    :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
   attribute :path,     :kind_of => String
   attribute :checksum, :regex => /^[a-zA-Z0-9]{64}$/

Hopefully this shows the similarities and differences between resources and lightweight resources. The lightweight resources are easier to write and understand, plus they can offer much the same (if not identical) functionality as the more complex resources that are built into |chef|.