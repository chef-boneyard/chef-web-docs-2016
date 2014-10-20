.. This is an included how-to. 

.. To reboot immediately:

.. code-block:: ruby

   reboot "now" do
     action :reboot_now
     reason "Cannot continue Chef run without a reboot."
     delay_mins 2
     notifies :reboot_now, "reboot[now]", :immediate
   end
