.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``host`` |inspec resource| block declares a host name, and then (depending on what is to be tested) a port and/or a protocol:

.. code-block:: ruby

   describe host('example.com', port: 80, proto: 'udp') do
     it { should be_reachable }
   end

where

* ``host()`` must specify a host name and may specify a port number and/or a protocol
* ``'example.com'`` is the host name
* ``port:`` is the port number
* ``proto: 'name'`` is the Internet protocol: |icmp| (``proto: 'icmp'``), |tcp| (``proto: 'tcp'``), or |udp| (``proto: 'udp'``)
* ``be_reachable`` is a valid matcher for this |inspec resource|
