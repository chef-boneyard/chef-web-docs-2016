.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A server entry represents an individual server in the |chef private| cluster. Each server must have an IP address and a role (front-end or back-end). Each server can be configured to run as a bootstrap server.

When running the High Availability topology, each back-end server may be configured using the ``cluster_ipaddress`` setting. This setting is used for replication and communication between all of the back-end servers. If the ``cluster_ipaddress`` setting is not provided, the ``ipaddress`` setting is used instead.

For a front-end server:

.. code-block:: ruby

   server "fe1.example.com",
     :ipaddress => "192.168.4.2",
     :role => "frontend"

For a back-end server that is not marked to run the bootstrap:

.. code-block:: ruby

   server "be2.example.com",
     :ipaddress => "192.168.4.6",
     :role => "backend",
     :cluster_ipaddress => "10.1.2.12"

For a back-end server that is configured as a bootstrap server:

.. code-block:: ruby

   server "be1.example.com",
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "10.1.2.10"