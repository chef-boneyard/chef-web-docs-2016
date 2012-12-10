.. This is an included how-to. 

.. To restart a resource when a template is modified, use the ``:restart`` attribute for ``notifies``:

.. code-block:: ruby

   template "/etc/www/configures-apache.conf" do
     notifies :restart, "service[apache]"
   end

