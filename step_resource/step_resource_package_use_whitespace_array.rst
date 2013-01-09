.. This is an included how-to. 

The following example shows two ways of doing the same thing. The first shows a series of packages that will be upgraded:

.. code-block:: ruby

   package "package-a" do
     action :upgrade
   end
   
   package "package-b" do
     action :upgrade
   end
   
   package "package-b" do
     action :upgrade
   end
   
   package "package-b" do
     action :upgrade
   end

and the following example shows how to do the same exact thing, but with a single ``package`` block by using the whitespace array (``%w``) feature in |ruby|:

.. code-block: ruby

   %w{package-a package-b package-c package-d}.each do |pkg|
     package pkg do
       action :upgrade
     end
   end

where ``|pkg|`` is used to define the name of the resource, but ensure that each item in the whitespace array has its own name.
