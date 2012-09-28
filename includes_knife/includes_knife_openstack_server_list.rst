.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with an |openstack| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife openstack server list

This argument has the following options:

``-A ID``, ``--openstack-access-key-id ID``
   |openstack-access-key-id|

``-K SECRET``, ``--openstack-secret-access-key SECRET``
   |openstack-secret-access-key|

``--openstack-api-endpoint ENDPOINT``
   |openstack-api-endpoint|

``--region REGION``
   |region openstack|

