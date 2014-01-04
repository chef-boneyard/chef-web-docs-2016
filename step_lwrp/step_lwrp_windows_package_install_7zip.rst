.. This is an included how-to. 

.. To install |7zip|:

.. code-block:: ruby

   windows_package "7-Zip 9.20 (x64 edition)" do
     source "http://downloads.sourceforge.net/sevenzip/7z920-x64.msi"
     action :install
   end
