.. This is an included how-to. 

The following will run every hour at 8:00 every Saturday morning, sending an email to "admin@opscode.com" every time it runs.

.. code-block:: ruby

   cron "name_of_cron_entry" do
     hour 8
     weekday 6
     mailto admin@opscode.com
     action :create
   end
