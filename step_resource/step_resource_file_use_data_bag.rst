.. This is an included how-to. 

The following example shows how to apply the contents of a data bag named "ssl_certificate" to certain files:

.. code-block:: ruby
   
   if data_bag_item[node[:matching_node][:ssl_certificate][:key]]
   
     data_bag_item = data_bag_item[node[:matching_node][:ssl_certificate][:key]]
       certificate = Chef::Cookbook.get_ssl_certificate_crt(data_bag_item)
       key = Chef::Cookbook.get_ssl_certificate_key(data_bag_item)
   
     file "#{node[:matching_node][:dir]}/shared/certificates/file_name.crt" do
       content certificate
       mode "077"
       action :create
     end
   
     file "#{node[:matching_node][:dir]}/shared/certificates/file_name.key" do
       content key
       mode "077"
       action :create
     end

where ``matching_node`` represents a type of node.
