.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Server entries represent an individual server in your |chef private| cluster. Each server has at least an IP address and role, and can optionally be marked to run the bootstrap process.

When topology is ha, servers with role of backend may be configured with a ``cluster_ipaddress``. This address will be used for replication and communication between the back-end servers. If ``cluster_ipaddress`` is not provided, ``ipaddress`` will be used instead.

For a back-end server, marked to run the initial bootstrap:

.. code-block:: ruby

   server "be1.example.com",
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "10.1.2.10"

For a back-end server, not marked to run the bootstrap:

.. code-block:: ruby

   server "be2.example.com",
     :ipaddress => "192.168.4.6",
     :role => "backend",
     :cluster_ipaddress => "10.1.2.12"

A front-end server:

.. code-block:: ruby

   server "fe1.example.com",
     :ipaddress => "192.168.4.2",
     :role => "fronted"