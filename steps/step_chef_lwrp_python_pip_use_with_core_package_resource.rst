.. This is an included how-to. 

To use this provider with the core package resource

.. code-block:: ruby

   package "django" do
     provider Chef::Provider::PythonPip
     action :install
   end
