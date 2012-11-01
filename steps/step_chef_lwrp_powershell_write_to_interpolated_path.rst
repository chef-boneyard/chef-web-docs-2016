.. This is an included how-to. 

To write to an interpolated path:

.. code-block:: ruby

   powershell "write-to-interpolated-path" do
     code <<-EOH
     $stream = [System.IO.StreamWriter]"#{Chef::Config[:file_cache_path]}/powershell-test.txt"
     $stream.WriteLine("In #{Chef::Config[:file_cache_path]}...word.")
     $stream.close()
     EOH
   end



