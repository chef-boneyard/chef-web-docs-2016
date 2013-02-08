.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Nominate one of your back-end servers as the bootstrap server. For that server, add the following:

Create the back-end bootstrap server entry in ``private-chef.rb``

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "CLUSTER_IPADDRESS"

Replace ``FQDN`` with the fully-qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server. The role is backend, and you will be using this server to bootstrap this private chef installation. Replace ``CLUSTER_IPADDRESS`` with the IP address of the interface to be used for cluster communications (such as keepalive and drbd replication). If no such interface is configured, exclude the cluster_ipaddress entry.

For the other back-end server, add the following:

Create the back-end server entry in private-chef.rb

.. code-block:: ruby

   server "FQDN",
    :ipaddress => "IPADDRESS",
    :role => "backend",
    :cluster_ipaddress => "CLUSTER_IPADDRESS"

Replace ``FQDN`` with the fully qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server. Replace ``CLUSTER_IPADDRESS`` with the IP address of the server’s interface assigned for cluster communications. If no such interface is configured, exclude the ``cluster_ipaddress`` entry.

Add an entry for the back-end VIP that you assigned earlier:

Create the back-end VIP entry in ``private-chef.rb``

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS",
     :device => "eth0",
     :heartbeat_device => "eth1"

Replace ``FQDN`` with the fully-qualified domain name of the server, and ``IPADDRESS`` with the IP address of the VIP. The :device parameter should be the ethernet interface that the floater VIP will bind to (ie. the public interface of the server). The :heartbeat_device parameter should be the ethernet interface that the cluster heartbeat goes over (ie. the interface of the ``cluster_ipaddress`` on the backend servers).


