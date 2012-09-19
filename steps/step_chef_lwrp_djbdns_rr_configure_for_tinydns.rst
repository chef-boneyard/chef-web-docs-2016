.. This is an included how-to. 

In the example, the node[:djbdns][:tinydns_internal_dir] is the djbdns cookbook attribute for the default location where the internal tinydns service is configured.

.. code-block:: ruby

   djbdns_rr "www.example.com" do
     cwd "#{node[:djbdns][:tinydns_internal_dir]}/root"
     ip "192.168.1.10"
     type "host"
     action :add
   end
