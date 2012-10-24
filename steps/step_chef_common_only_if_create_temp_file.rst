.. This is an included how-to. 

The following example uses |ruby| and curly braces to create ``/tmp/somefile``, but only if the node has the attribute ``some_value``:

.. code-block:: ruby

   template "/tmp/somefile" do
     mode "0644"
     source "somefile.erb"
     only_if { node[:some_value] }
   end

