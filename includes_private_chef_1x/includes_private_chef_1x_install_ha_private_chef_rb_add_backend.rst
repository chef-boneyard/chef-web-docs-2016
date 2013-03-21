.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Nominate a back-end server as the bootstrap server. For that server, add the following to the |private chef rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "CLUSTER_IPADDRESS"

Replace ``FQDN`` with the |fully qualified domain name| of the server, and ``IPADDRESS`` with the IP address of the server. The role is a back-end server. If the server will be used to bootstrap the |chef private| installation, replace ``CLUSTER_IPADDRESS`` with the IP address of the interface to be used for cluster communications (such as |keepalived| and |drbd| replication). If no such interface is configured, exclude the ``cluster_ipaddress`` entry.

For the other back-end server, add the following:

.. code-block:: ruby

   server "FQDN",
    :ipaddress => "IPADDRESS",
    :role => "backend",
    :cluster_ipaddress => "CLUSTER_IPADDRESS"

Replace ``FQDN`` with the |fully qualified domain name| of the server, and ``IPADDRESS`` with the IP address of the server. Replace ``CLUSTER_IPADDRESS`` with the IP address of the server’s interface assigned for cluster communications. If no such interface is configured, exclude the ``cluster_ipaddress`` entry.

Add an entry for the back-end virtual IP address that was assigned earlier:

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS",
     :device => "eth0",
     :heartbeat_device => "eth1"

Replace ``FQDN`` with the |fully qualified domain name| of the server, and ``IPADDRESS`` with the IP address of the virtual IP address. The ``:device`` parameter should be the ethernet interface to which the floater virtual IP address will bind (i.e. the public interface of the server). The ``:heartbeat_device`` parameter should be the ethernet interface that the cluster heartbeat goes over (i.e. the interface of the ``cluster_ipaddress`` on the backend servers).


