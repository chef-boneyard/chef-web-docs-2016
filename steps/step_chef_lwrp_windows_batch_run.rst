.. This is an included how-to. 

To run a batch file that unzips and moves |ruby|:

.. code-block:: ruby

   windows_batch "unzip_and_move_ruby" do
     code <<-EOH
     7z.exe x #{Chef::Config[:file_cache_path]}/ruby-1.8.7-p352-i386-mingw32.7z  
        -oC:\\source -r -y
     xcopy C:\\source\\ruby-1.8.7-p352-i386-mingw32 C:\\ruby /e /y
     EOH
   end
   
   windows_batch "echo some env vars" do
     code <<-EOH
     echo %TEMP%
     echo %SYSTEMDRIVE%
     echo %PATH%
     echo %WINDIR%
     EOH
   end



