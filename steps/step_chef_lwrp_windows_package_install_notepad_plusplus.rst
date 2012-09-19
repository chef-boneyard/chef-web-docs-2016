.. This is an included how-to. 

To install |notepad plusplus| using a local installer:

.. code-block:: ruby

   windows_package "Notepad++" do
     source "c:/installation_files/npp.5.9.2.Installer.exe"
     action :install
   end
