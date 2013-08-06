.. This is an included how-to. 

The following example shows how to create log entries each time the contents of a data bag named "ssl_certificate" are used.

.. code-block:: ruby

   data_bag_item = Chef::Cookbook.get_ssl_certificate_data_bag
   
   if data_bag_item[node[:matching_node][:ssl_certificate][:key]]
   
     log "Used ssl_certificate data bag entry for #{node[:matching_node][:ssl_certificate][:key]}" do
       level :info
     end
   
     data_bag_item = data_bag_item[node[:matching_node][:ssl_certificate][:key]]
       certificate = Chef::Cookbook.get_ssl_certificate_crt(data_bag_item)
       key = Chef::Cookbook.get_ssl_certificate_key(data_bag_item)
   
     # a collection of file resource blocks that use the certificates
   
   else
   
     log "Could not find ssl_certificate data bag, default certificate used." do
       level :warn
     end
   
     # other stuff to do when the ssl_certificate data bag cannot be found
   
   end

where ``matching_node`` represents a type of node.
