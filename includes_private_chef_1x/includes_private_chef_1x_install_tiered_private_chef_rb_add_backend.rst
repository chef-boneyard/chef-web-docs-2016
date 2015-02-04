.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For the server that will be used as a back-end servers, add the following to the |private chef rb| file:

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "backend",
     :bootstrap => true

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``backend``, and you will be using this server to bootstrap this |chef private| installation.

Additionally, this server is used exclusively for the back-end services. Let |chef private| know by adding the following entry to ``private-chef.rb``:

.. code-block:: ruby

   backend_vip "FQDN",
     :ipaddress => "IPADDRESS"

Replace ``FQDN`` with the |fqdn| of the server, and ``IPADDRESS`` with the IP address of the server.