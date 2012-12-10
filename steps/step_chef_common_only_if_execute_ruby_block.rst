.. This is an included how-to. 

The following example uses a |ruby| block to create ``/tmp/somefile``, but only if ``/etc/passwd`` exists:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode 00644
     source "somefile.erb"
     only_if do ! File.exists?("/etc/passwd") end
   end

