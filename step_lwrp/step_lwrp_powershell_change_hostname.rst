.. This is an included how-to. 

To change the host name for a computer:

.. code-block:: ruby

   powershell "rename hostname" do
     code <<-EOH
     $computer_name = Get-Content env:computername
     $new_name = 'test-hostname'
     $sysInfo = Get-WmiObject -Class Win32_ComputerSystem
     $sysInfo.Rename($new_name)
     EOH
   end



