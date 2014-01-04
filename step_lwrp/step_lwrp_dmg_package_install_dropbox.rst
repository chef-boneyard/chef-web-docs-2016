.. This is an included how-to. 

.. To install |dropbox|:

.. code-block:: ruby

   dmg_package "Dropbox" do
      volumes_dir "Dropbox Installer"
      source "http://www.dropbox.com/download?plat=mac"
      checksum "b4ea620ca22b0517b75753283ceb82326aca8bc3c86212fbf725de6446a96a13"
      action :install
    end

The |sha256| checksum that was current when the application was originally installed is assumed (it may not be current for the latest releases).



