.. This is an included how-to. 

To install /Applications/Tunnelblick.app from the primary download site.

.. code-block:: ruby

   dmg_package "Tunnelblick" do
      source "http://tunnelblick.googlecode.com/files/Tunnelblick_3.1.2.dmg"
      checksum "a3fae60b6833175f32df20c90cd3a3603a"
      action :install
    end

The following examples all use the SHA256 checksum that was current when the application was originally installed, and may not be current for the latest releases.
