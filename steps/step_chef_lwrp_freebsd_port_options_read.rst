.. This is an included how-to. 

To read default options from ``/usr/ports/lang/php5``, current options from ``/var/db/ports/php5/options`` (if that option exists), and then set ``APACHE`` options to true (leaving others unchanged):

.. code-block:: ruby

   freebsd_port_options "php5" do
     options "APACHE" => true
     action :create
   end



