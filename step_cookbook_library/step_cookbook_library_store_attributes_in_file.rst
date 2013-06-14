.. This is an included how-to. 


A customer record is stored in an attribute file that looks like this::

   mycompany_customers({
     :bob => {
       :homedir => "/home/bob",
       :webdir => "/home/bob/web"
     }
   }
   )

A simple recipe may contain something like this::

   directory node[:mycompany_customers][:bob][:webdir] do
     owner "bob"
     group "bob"
     action :create
   end

Or a less verbose version of the same simple recipe::

   directory customer(:bob)[:webdir] do
     owner "bob"
     group "bob"
     action :create
   end

A simple library could be created that extends ``Chef::Recipe::``, like this::

   class Chef
     class Recipe    
       # A shortcut to a customer
       def customer(name)
         node[:mycompany_customers][name]
       end
     end 
   end
