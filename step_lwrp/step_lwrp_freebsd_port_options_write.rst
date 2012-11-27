.. This is an included how-to. 

To write ``freebsd-php5-options`` out as ``/var/db/ports/php5/options``:

.. code-block:: ruby

   freebsd_port_options "php5" do
     source "freebsd-php5-options.erb"
     action :create
   end



