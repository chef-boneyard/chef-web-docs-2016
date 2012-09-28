.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |eucalyptus| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife eucalyptus server list

This argument has the following options:

``-A ID``, ``--euca-access-key-id ID``
   |euca-access-key-id|

``-K SECRET``, ``--euca-secret-access-key SECRET``
   |euca-secret-access-key|

``--euca-api-endpoint ENDPOINT``
   |euca-api-endpoint|

``--region REGION``
   |region eucalyptus|

