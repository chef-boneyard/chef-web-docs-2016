.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To run a resource at the end of the resource collection phase of the |chef| run, manipulate the ``Chef::ResourceCollection`` object after it has been built.

**A simple "after" hook**

.. code-block:: ruby

   collection.each do |r|
     if r.provider == Chef::Provider::Package::Rubygems
       r.notify :run, resources(:execute => "random command")
     end
   end

**Run a package installer one time**

In a situation where many recipes are using the same package installer---|yum|, for example---rather than having |chef| run the provider each time it comes across the need to install a package, all of those package installs can be grouped into a single step. The following code shows how to approach consolidating package installs into a single step: 

.. code-block:: ruby

   after "yum bundle" do |node, collection|
     package_list = Array.new # The packages we are going to install at once
     injection_point = 0      # Where in the resource collection the first package install appears 
     collection.each_index do |i| # Walk the index
       r = collection[i] # Set the current resource to r
       # if it is a yum package
       if Chef::Platform.find_provider_for_node(node, r) == Chef::Provider::Package::Yum
         # And we are installing without a version
         if r.action == :install && !r.version 
           # Store the location, set the action to nothing, and store the name of the package
           injection_point = i unless injection_point == 0
           r.action(:nothing) 
           package_list << r.package_name
         end
       end
     end
   
     # Create a resource to install all the yum pkgs at once
     all_packages = execute "yum bundle" do
       command "yum install #{package_list.join(' ')}"
     end
     # Insert the new resource
     collection.insert(i, all_packages)
   end

.. note:: In the previous example, if the version of a package specified, and a package that depends on it is bundled up, |yum| may not behave as expected. Some trial and error may be necessary.  

