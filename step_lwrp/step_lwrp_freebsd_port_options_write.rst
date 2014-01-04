.. This is an included how-to. 

.. To write the default options:

.. code-block:: ruby

   freebsd_port_options "php5" do
     source "freebsd-php5-options.erb"
     action :create
   end



