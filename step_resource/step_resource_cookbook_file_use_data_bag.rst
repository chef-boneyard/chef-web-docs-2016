.. This is an included how-to. 

The following example shows how to use a data bag named "ssl_certificate" to:

* Create a log entry every time the data bag is used
* Set variables for each data bag item
* Specify what to do if the ``ssl_certificates`` data bag cannot be found and in which cookbook files to look for the default certificates
* Create a log entry every time the default |ssl| certificates are used

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

     cookbook_file "#{node[:matching_node][:dir]}/shared/certificates/site_proxy.crt" do
       source "cert_file.crt"
       mode "077"
       action :create
     end

     cookbook_file "#{node[:matching_node][:dir]}/shared/certificates/site_proxy.key" do
       source "key_file.key"
       mode "077"
       action :create
     end
   
     log "Could not find ssl_certificate data bag, default certificate used." do
       level :warn
     end
      
   end

where ``matching_node`` represents a type of node.
