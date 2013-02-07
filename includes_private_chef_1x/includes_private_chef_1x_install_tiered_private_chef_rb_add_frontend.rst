.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For each front-end server, add the following:

Create entries for each front-end server in private-chef.rb

.. code-block:: ruby

   server "FQDN",
     :ipaddress => "IPADDRESS",
     :role => "frontend"

Replace ``FQDN`` with the fully qualified domain name of the server, and ``IPADDRESS`` with the IP address of the server. The role is ``frontend``.