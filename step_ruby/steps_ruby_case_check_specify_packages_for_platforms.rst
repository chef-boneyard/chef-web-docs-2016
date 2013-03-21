.. This is an included how-to. 

The following example shows how to use a case statement to tell |chef| for which platforms and packages should be installed using |curl|.

.. code-block:: ruby

   package "curl"
     case node[:platform]
     when "redhat", "centos"
       package "package_1"
       package "package_2"
       package "package_3"
     when "ubuntu", "debian"
       package "package_a"
       package "package_b"
       package "package_c"
   end

where ``node[:platform]`` for each node is identified by |ohai| during every |chef| run. For example:

.. code-block:: ruby

   package "curl"
     case node[:platform]
     when "redhat", "centos"
       package "zlib-devel"
       package "openssl-devel"
       package "libc6-dev"
     when "ubuntu", "debian"
       package "openssl"
       package "pkg-config"
       package "subversion"
   end
