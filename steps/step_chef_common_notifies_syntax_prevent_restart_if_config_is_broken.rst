.. This is an included how-to. 

To verify a configuration and prevent an application from restarting if the configuration is broken, use ``:nothing``:

.. code-block:: ruby

   execute "test-nagios-config" do
     command "nagios3 --verify-config"
     action :nothing
   end

