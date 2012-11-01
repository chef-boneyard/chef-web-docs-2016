.. This is an included how-to. 

To set the ``cwd`` attribute to a |windows| environment variable:

.. code-block:: ruby

   powershell "cwd-to-win-env-var" do
     cwd ENV['TEMP']
     code <<-EOH
     $stream = [System.IO.StreamWriter] "./temp-write-from-chef.txt"
     $stream.WriteLine("chef on windows rox yo!")
     $stream.close()
     EOH
   end



