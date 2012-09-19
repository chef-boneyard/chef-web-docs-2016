.. This is an included how-to. 

To unzip a remote |zip| file locally:

.. code-block:: ruby

   windows_zipfile "c:/bin" do
     source "http://download.sysinternals.com/Files/SysinternalsSuite.zip"
     action :unzip
     not_if {::File.exists?("c:/bin/PsExec.exe")}
   end
