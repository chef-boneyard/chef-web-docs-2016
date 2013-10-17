.. This is an included how-to. 


The following example shows how to use a custom block of |ruby| code to ensure that a node can resolve the host. If the node can resolve the host, the |chef client| will do nothing. If the node cannot resolve the host, the |chef client| will configure the host:

.. code-block:: ruby

   ruby_block "ensure node can resolve API FQDN" do
     block do
       fe = Chef::Util::FileEdit.new("/etc/hosts")
       fe.insert_line_if_no_match(/#{node['chef-server']['api_fqdn']}/,
                                  "127.0.0.1 #{node['chef-server']['api_fqdn']}")
       fe.write_file
     end
     not_if { Resolv.getaddress(node['chef-server']['api_fqdn']) rescue false }
   end