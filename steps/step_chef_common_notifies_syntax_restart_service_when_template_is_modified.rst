.. This is an included how-to. 

For example, if you need to restart the |apache| service when you modify a template that configures |apache|, use ``:restart``:

.. code-block:: ruby

   template "/etc/www/configures-apache.conf" do
     notifies :restart, "service[apache]"
   end

