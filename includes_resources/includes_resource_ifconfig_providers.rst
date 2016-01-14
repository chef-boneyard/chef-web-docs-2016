.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following providers:

``Chef::Provider::Ifconfig``, ``ifconfig``
   The default provider for all platforms. Currently, this provider only writes out a start-up configuration file for the interface on |redhat|-based platforms (it writes to ``/etc/sysconfig/network-scripts/ifcfg-#{device_name}``). 
