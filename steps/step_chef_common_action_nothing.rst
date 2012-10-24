.. This is an included how-to. 

For example:

.. code-block:: ruby

   service "memcached" do
     action :nothing
     supports :status => true, :start => true, :stop => true, :restart => true
   end

