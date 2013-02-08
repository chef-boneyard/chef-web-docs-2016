.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuration of |chef private| is done through the ``/etc/opscode/private-chef.rb`` file. The file itself is written in |ruby|, allowing you to have as much flexibility as possible with how you configure the system.

While there are a great deal of configuration options, the number required for common use is quite small. For standalone single server configurations no configuration is required at all - the defaults take care of everything.

A typical High Availability or Tiered configuration consists of only:

* A topology
* A number of server entries
* An ``api_fqdn`` entry
* A ``backend_vip`` entry
* A ``notification_email``

See the tiered and high-availability installation documentation for complete configuration examples.

