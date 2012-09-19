.. This is an included how-to. 

To pass an environment variable to a script:

.. code-block:: ruby

   powershell "read-env-var" do
     cwd Chef::Config[:file_cache_path]
     environment ({'foo' => 'BAZ'})
     code <<-EOH
     $stream = [System.IO.StreamWriter] "./test-read-env-var.txt"
     $stream.WriteLine("FOO is $foo")
     $stream.close()
     EOH
   end
