.. This is an included how-to. 

The ``node[:djbdns][:tinydns_internal_dir]`` attribute in the |djbdns| cookbook can be used to set the default location from which the internal |tinydns| service is configured:

.. code-block:: ruby

   djbdns_rr "www.example.com" do
     cwd "#{node[:djbdns][:tinydns_internal_dir]}/root"
     ip "192.168.1.10"
     type "host"
     action :add
   end
