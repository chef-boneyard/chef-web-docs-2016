.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A completed ``private-chef.rb`` configuration file for a four server tiered private chef cluster, consisting of:

FQDN	IP Address	Cluster IP Address	Role
be1.example.com	192.168.4.1	10.1.2.10	backend
be2.example.com	192.168.4.6	10.1.2.12	backend
fe1.example.com	192.168.4.2	n/a	frontend
fe2.example.com	192.168.4.3	n/a	frontend
fe3.example.com	192.168.4.4	n/a	frontend
chef.example.com	192.168.4.5	n/a	load balanced VIP
be.example.com	192.168.4.7	n/a	back-end VIP
Looks like this:

Tiered ``private-chef.rb``

.. code-block:: ruby

   topology "ha"
   
   server "be1.example.com"
     :ipaddress => "192.168.4.1",
     :role => "backend",
     :bootstrap => true,
     :cluster_ipaddress => "10.1.2.10"
   
   server "be2.example.com",
     :ipaddress => "192.168.4.6",
     :role => "backend",
     :cluster_ipaddress => "10.1.2.12"
   
   backend_vip "be.example.com",
     :ipaddress => "192.168.4.7",
     :device => "eth0",
     :heartbeat_device => "eth1"
   
   server "fe1.example.com",
     :ipaddress => "192.168.4.2",
     :role => "frontend"
   
   server "fe2.example.com",
     :ipaddress => "192.168.4.3",
     :role => "frontend"
   
   server "fe3.example.com",
     :ipaddress => "192.168.4.4",
     :role => "frontend"
   
   api_fqdn "chef.example.com"

