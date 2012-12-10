.. This is an included how-to. 


The following example shows how to use the ``only_if`` condition to create a file based on a template and using |ruby| to specify the condition:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode 00644
     source "somefile.erb"
     only_if do ! File.exists?("/etc/passwd") end
   end

