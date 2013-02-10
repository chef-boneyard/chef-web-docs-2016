.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The bootstrap server should be defined in the |chef private| configuration file, ``/etc/opscode/private-chef.rb``:

.. code-block:: ruby

   server "opc-backend-bootstrap.local",
     :ipaddress => "172.30.1.100",
     :role => "backend",
     :bootstrap => true

The bootstrap server will also contain a bootstrap file on the filesystem at ``/var/opt/opscode/bootstrapped``.