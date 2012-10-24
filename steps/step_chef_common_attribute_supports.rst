.. This is an included how-to. 

Using ``supports``:

.. code-block:: ruby

   service "apache" do
     supports :restart => true, :reload => true
     action :enable
   end

