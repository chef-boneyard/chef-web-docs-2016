.. This is an included how-to. 

To install MacIrssi to ~/Applications from the local file downloaded to the cache path into an Applications directory in the current user's home directory.

Chef should run as a non-root user for this: directory "#{ENV['HOME']}/Applications"

.. code-block:: ruby

   dmg_package "MacIrssi" do
      destination "#{ENV['HOME']}/Applications"
      action :install
    end

The following examples all use the SHA256 checksum that was current when the application was originally installed, and may not be current for the latest releases.
