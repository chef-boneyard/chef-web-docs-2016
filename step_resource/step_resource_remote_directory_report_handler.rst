.. This is an included how-to. 

The following example shows how to use the |resource remote_directory| resource and a lightweight resource called ``chef_handler`` (that is included with |chef|) to reboot a handler named ``WindowsRebootHandler``:

.. code-block:: ruby

   remote_directory node['chef_handler']['handler_path'] do
     source 'handlers'
     recursive true
     action :create
   end
   
   chef_handler 'WindowsRebootHandler' do
     source "#{node['chef_handler']['handler_path']}/windows_reboot_handler.rb"
     arguments node['windows']['allow_pending_reboots']
     supports :report => true, :exception => false
     action :enable
   end

.. note:: This example comes from the ``reboot_handler`` recipe in the following cookbook: https://github.com/opscode-cookbooks/windows.

