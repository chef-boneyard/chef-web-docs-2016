.. This is an included how-to. 

.. To run ``BGInfo`` at login:

.. code-block:: ruby

   windows_auto_run 'BGINFO' do
     program "C:/Sysinternals/bginfo.exe"
     args "\"C:/Sysinternals/Config.bgi\" /NOLICPROMPT /TIMER:0"
     not_if { Registry.value_exists?(AUTO_RUN_KEY, 'BGINFO') }
     action :create
   end



