.. This is an included how-to. 

The following example shows a schedule that will run at 8:00 PM, every weekday (Monday through Friday), but only in November:

.. code-block:: ruby

   cron "name_of_cron_entry" do
     minute 0
     hour 20
     day *
     month 10
     weekday 1-5
     action :create
   end
