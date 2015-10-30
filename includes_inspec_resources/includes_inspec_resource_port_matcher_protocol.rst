.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``protocol`` matcher tests the Internet protocol: |icmp| (``'icmp'``), |tcp| (``'tcp'`` or ``'tcp6'``), or |udp| (``'udp'`` or ``'udp6'``):

.. code-block:: ruby

   its('protocol') { should eq 'tcp' }

or for the |ipv6| protocol:

.. code-block:: ruby

   its('protocol') { should eq 'tcp6' }
