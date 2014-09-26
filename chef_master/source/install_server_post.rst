=====================================================
Post-Config Options
=====================================================

The following sections describe configuration steps that should be done after the |chef server| is installed.


Active Directory and LDAP
=====================================================
The |chef server| supports using |windows ad| or |ldap|. This allows users to log in to the |chef server| by using their corporate credentials instead of having a separate username and password. To configure the |chef server| to use |windows ad| or |ldap| do the following:

#. Specify the following settings:

   .. include:: ../../includes_config/includes_config_rb_server_settings_ldap.rst

#. Run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

At this point, all users should be able to use their |windows ad| or |ldap| usernames and passwords to log in to the |chef server|.


GRE Tunnels
=====================================================

.. warning:: This option is sometimes necessary when the |chef server| is configured for high availability using |drbd|.

Occasionally, a GRE tunnel will be required to handle the |vrrp| traffic. To accomplish this, set the following in ``/var/opt/opscode/keepalived/bin/tunnel.sh`` on the back-end server that will be used for bootstrapping:

.. code-block:: bash

   #!/bin/sh
   ip tunnel add pc mode gre remote VRRP_IP_OF_PEER local MY_IP ttl 25
   ip link set pc up
   ip addr add 172.18.16.1 dev pc
   ip route add 172.18.16.0/24 dev pc

Replace ``VRRP_IP_OF_PEER`` with the IP address of the server on the other end of the tunnel, and ``MY_IP`` with the IP address of the server on which the script will be located.

The ``172.17.16.**`` network addresses used in the previous examples could be any unused reserved IP address space.

Set the following in ``/etc/opscode/chef-server.rb``:

.. code-block:: ruby

   backend_vip "192.168.141.108",
     :ipaddress => "192.168.141.108",
     :device => "eth0"

And set the |keepalived| unicast addresses to the GRE tunnel addresses.