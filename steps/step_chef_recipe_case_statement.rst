.. This is an included how-to. 


A case statement can be used to compare an expression (specified by case) and then executing the code that matches the expression.

To select a package name based on platform:

.. code-block:: ruby

   package "apache2" do
     case node[:platform]
     when "centos","redhat","fedora","suse"
       package_name "httpd"
     when "debian","ubuntu"
       package_name "apache2"
     when "arch"
       package_name "apache"
     end 
     action :install
   end
