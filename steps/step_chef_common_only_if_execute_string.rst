.. This is an included how-to. 

The following example uses a string to create ``/tmp/somefile``, but only if ``/etc/passwd`` exists:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     only_if "test -f /etc/passwd"
   end

