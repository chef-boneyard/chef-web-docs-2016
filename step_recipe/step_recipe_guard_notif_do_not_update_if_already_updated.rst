.. This is an included how-to. 


The following example shows how to use ``not_if`` to guard against running the ``apt-get-update`` command when a file already exists that is the same as the updated file:

.. code-block:: ruby

   execute "apt-get-update" do
     command "apt-get update"
     ignore_failure true
     not_if do ::File.exists?('/var/lib/apt/periodic/update-success-stamp') end
   end

