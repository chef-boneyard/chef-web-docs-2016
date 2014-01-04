.. This is an included how-to. 

.. To unzip a local |zip| file:

.. code-block:: ruby

   windows_zipfile "c:/the_codez" do
     source "c:/foo/baz/the_codez.zip"
     action :unzip
   end
