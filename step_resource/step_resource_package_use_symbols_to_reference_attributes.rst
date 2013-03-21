.. This is an included how-to. 

.. To use symbols to reference attributes

Do this:

.. code-block:: ruby

   package "mysql-server" do
     version node['mysql']['version']
     action :install
   end

and not this:

.. code-block:: ruby

   package "mysql-server" do
     version node[:mysql][:version]
     action :install
   end
