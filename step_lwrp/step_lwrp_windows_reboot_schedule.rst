.. This is an included how-to. 

The following example shows how to schedule a reboot at the end of a |chef client| run:

.. code-block:: ruby

   windows_reboot 60 do
     reason 'cause chef said so'
     action :nothing
   end
   windows_package 'some_package' do
     action :install
     notifies :request, 'windows_reboot[60]'
   end



