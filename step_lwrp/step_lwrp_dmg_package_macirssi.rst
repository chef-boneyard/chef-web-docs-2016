.. This is an included how-to. 

The following example shows how to install MacIrssi to the ``~/Applications`` directory from the local file downloaded to the cache path into an ``/Applications`` directory in the current user's home directory.

.. code-block:: ruby

   dmg_package "MacIrssi" do
      destination "#{ENV['HOME']}/Applications"
      action :install
    end

The |chef client| should run as a non-root user for the ``#{ENV['HOME']}/Applications`` directory. The |sha256| checksum that was current when the application was originally installed is assumed (it may not be current for the latest releases).
