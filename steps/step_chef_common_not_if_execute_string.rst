.. This is an included how-to. 

The following example shows how to use a string to create ``/tmp/somefile``, but not if the ``/etc/passwd`` already exists:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode 00644
     source "somefile.erb"
     not_if "test -f /etc/passwd"
   end

