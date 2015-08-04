.. This is an included how-to. 

The following example shows a schedule that will run every hour at 8:00 each Saturday morning, and will then send an email to "admin@opscode.com" after each run.

.. code-block:: ruby

   cron 'name_of_cron_entry' do
     minute '0'
     hour '8'
     weekday '6'
     mailto 'admin@example.com'
     action :create
   end
