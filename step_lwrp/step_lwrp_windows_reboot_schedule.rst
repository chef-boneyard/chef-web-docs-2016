.. This is an included how-to. 

To schedule a reboot at the end of a |chef client| run if a package installs:

.. code-block:: ruby

   windows_reboot 60 do
     reason 'cause chef said so'
     action :nothing
   end
   windows_package 'some_package' do
     action :install
     notifies :request, 'windows_reboot[60]'
   end



