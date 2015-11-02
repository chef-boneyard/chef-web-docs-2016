.. This is an included how-to. 

.. To get all groups of Administrator user: 

.. code-block:: ruby

   myscript = <<-EOH
     # find user
     $user = Get-WmiObject Win32_UserAccount -filter "Name = 'Administrator'"
     # get related groups
     $groups = $user.GetRelated('Win32_Group') | Select-Object -Property Caption, Domain, Name, LocalAccount, SID, SIDType, Status
     $groups | ConvertTo-Json
   EOH
   
   describe script(myscript) do
     its('stdout') { should_not eq '' }
   end
