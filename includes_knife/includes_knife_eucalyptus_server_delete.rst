.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |eucalyptus| cloud. To find a specific cloud instance, use the ``knife eucalyptus server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife eucalyptus server delete [SERVER_ID...]

This argument has the following options:

``-A ID``, ``--euca-access-key-id ID``
   |euca-access-key-id|

``--euca-api-endpoint ENDPOINT``
   |euca-api-endpoint|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--euca-secret-access-key SECRET``
   |euca-secret-access-key|

``--region REGION``
   |region eucalyptus|

For example, to delete an instance named "devops2012", enter:

.. code-block:: bash

   $ knife eucalyptus server delete devops2012

