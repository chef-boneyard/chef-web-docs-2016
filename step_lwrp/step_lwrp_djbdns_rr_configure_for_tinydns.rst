.. This is an included how-to. 

To add an entry using the ``node[:djbdns][:tinydns_internal_dir]`` |djbdns| cookbook attribute for the default location where the internal |tinydns| service is configured:

.. code-block:: ruby

   djbdns_rr "www.example.com" do
     cwd "#{node[:djbdns][:tinydns_internal_dir]}/root"
     ip "192.168.1.10"
     type "host"
     action :add
   end
