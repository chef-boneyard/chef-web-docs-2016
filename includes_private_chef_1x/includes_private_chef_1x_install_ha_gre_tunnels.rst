.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Occasionally, you may need to utilize a GRE tunnel to handle the VRRP traffic. To accomplish this, you will need to put the following in ``/var/opt/opscode/keepalived/bin/tunnel.sh``.

On the backend server that will be used for bootstrapping:

.. code-block:: bash

   #!/bin/sh
   ip tunnel add pc mode gre remote VRRP_IP_OF_PEER local MY_IP ttl 25
   ip link set pc up
   ip addr add 172.18.16.1 dev pc
   ip route add 172.18.16.0/24 dev pc

Replace ``VRRP_IP_OF_PEER`` with the IP address of the server on the other end of the tunnel, and ``MY_IP`` with the IP address of the server on which the script will be located.

The ``172.17.16.0/24`` network used in the above examples could be any unused reserved IP address space.

Set the following in ``/etc/opscode/private-chef.rb``:

.. code-block:: ruby

   backend_vip "192.168.141.108",
     :ipaddress => "192.168.141.108",
     :device => "eth0",
     :heartbeat_device => "pc"

And set the |keepalived| unicast addresses to the GRE tunnel addresses.


