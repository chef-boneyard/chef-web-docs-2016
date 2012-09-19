.. This is an included how-to. 

To download an |iso| and then continue seeding:

.. code-block:: ruby

   transmission_torrent_file "/home/ubuntu/ubuntu.iso"  do
     torrent "http://releases.ubuntu.com/lucid/ubuntu-10.04.1-server-i386.iso.torrent"
     owner 'ubuntu'
     group 'ubuntu'
     continue_seeding true
     rpc_username node['transmission']['rpc_username']
     rpc_password node['transmission']['rpc_password']
     action :create
   end
