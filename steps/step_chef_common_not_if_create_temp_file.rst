.. This is an included how-to. 

The next example shows how to create ``/tmp/somefile``, but not if the node has the attribute ``some_value`` using |ruby| and curly braces (that specify the node attribute):

.. code-block:: ruby

   template "/tmp/somefile" do
     mode 00644
     source "somefile.erb"
     not_if { node[:some_value] }
   end

