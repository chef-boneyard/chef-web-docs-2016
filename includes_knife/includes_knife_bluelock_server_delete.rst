.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |bluelock| cloud. A block represents the on-demand virtual computing resource; a hostname is specific to a block. To find a specific cloud instance, use the ``knife bluelock server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife bluelock server delete SERVER_NAME (options)

This argument has the following options:

``-A USER_NAME``, ``--bluelock-username USER_NAME``
   |username bluelock|

``-K PASSWORD``, ``--bluelock-password PASSWORD``
   |password bluelock|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name purge|

``-p``, ``--purge``
   |purge node bluelock|
