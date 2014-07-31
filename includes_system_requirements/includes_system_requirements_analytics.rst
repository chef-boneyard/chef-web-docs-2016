.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef analytics| has the following requirements:

* |chef server oec| version 11.1.8 (or later)
* |chef analytics| will run on any platform supported by |chef server oec|

When configured in |standalone| mode:

* The |chef analytics| machine needs to connect to the |chef server oec| machine on the rabbitmq port (default 5672)
* |chef analytics| requires the ``api_fqdn`` to be set in the ``/etc/opscode/private-chef.rb`` file. For example:

  .. code-block:: ruby
  
     api_fqdn = 'CHEF_SERVER_VIP'

**Hardware Requirements**

For a standalone deployment:

* 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 4 GB of RAM
* 5 GB of free disk space in /opt
* 20 GB of free disk space in /var (The actions database is installed under /var)
